﻿/**
 * File:   blend_image_rgb565_rgba8888.c
 * Author: AWTK Develop Team
 * Brief:  blend rgba8888 on rgb565
 *
 * Copyright (c) 2018 - 2019  Guangzhou ZHIYUAN Electronics Co.,Ltd.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * License file for more details.
 *
 */

/**
 * History:
 * ================================================================
 * 2018-10-10 Generated by gen.sh(DONT MODIFY IT)
 *
 */
#include "tkc/rect.h"
#include "base/pixel.h"
#include "base/bitmap.h"
#include "base/pixel_pack_unpack.h"

#define pixel_dst_t pixel_rgb565_t
#define pixel_dst_format pixel_rgb565_format
#define pixel_dst_to_rgba pixel_rgb565_to_rgba
#define pixel_dst_from_rgb pixel_rgb565_from_rgb

#define pixel_src_t pixel_rgba8888_t
#define pixel_src_format pixel_rgba8888_format
#define pixel_src_to_rgba pixel_rgba8888_to_rgba

#define pixel_t pixel_dst_t
#define pixel_from_rgb pixel_dst_from_rgb
#define pixel_to_rgba pixel_dst_to_rgba

#include "pixel_ops.inc"
#include "blend_image.inc"

ret_t blend_image_rgb565_rgba8888(bitmap_t* dst, bitmap_t* src, rect_t* dst_r, rect_t* src_r,
                                  uint8_t a) {
  return_value_if_fail(dst != NULL && src != NULL && src_r != NULL && dst_r != NULL,
                       RET_BAD_PARAMS);
  return_value_if_fail(dst->format == BITMAP_FMT_RGB565 && src->format == BITMAP_FMT_RGBA8888,
                       RET_BAD_PARAMS);

  if (a > 0xf8) {
    return blend_image_without_alpha(dst, src, dst_r, src_r);
  } else if (a > 8) {
    return blend_image_with_alpha(dst, src, dst_r, src_r, a);
  } else {
    return RET_OK;
  }
}
