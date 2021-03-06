#define pixel_t pixel_dst_t
#define pixel_from_rgb pixel_dst_from_rgb

static inline void blend_a(uint8_t* dst, uint8_t* src, uint8_t alpha) {
  pixel_dst_t* d = (pixel_dst_t*)dst;
  pixel_src_t* s = (pixel_src_t*)src;
  rgba_t rgba = pixel_src_to_rgba((*s));
  uint8_t a = alpha == 0xff ? rgba.a : ((rgba.a * alpha) >> 8);

  if (a > 0xf8) {
    pixel_dst_t p = pixel_dst_from_rgb(rgba.r, rgba.g, rgba.b);
    *d = p;
  } else if (a > 8) {
    rgba_t srgba = pixel_src_to_rgba((*s));
    rgba_t drgba = pixel_dst_to_rgba((*d));

    *d = blend_rgba(drgba, srgba, a);
  }
}

#ifndef blend
#define blend(d, s) blend_a(d, s, 0xff)
#endif /*blend*/

static ret_t blend_image_without_alpha(bitmap_t* dst, bitmap_t* src, rect_t* dst_r, rect_t* src_r) {
  wh_t i = 0;
  wh_t j = 0;
  xy_t sx = src_r->x;
  xy_t sy = src_r->y;
  wh_t sw = src_r->w;
  wh_t sh = src_r->h;
  xy_t dx = dst_r->x;
  xy_t dy = dst_r->y;
  wh_t dw = dst_r->w;
  wh_t dh = dst_r->h;
  wh_t src_iw = src->w;
  wh_t src_ih = src->h;
  wh_t dst_iw = dst->w;
  wh_t dst_ih = dst->h;
  uint8_t* srcp = (uint8_t*)(src->data);
  uint8_t* dstp = (uint8_t*)(dst->data);
  uint8_t src_bpp = bitmap_get_bpp(src);
  uint8_t dst_bpp = bitmap_get_bpp(dst);
  uint32_t src_line_length = bitmap_get_line_length(src);
  uint32_t dst_line_length = bitmap_get_line_length(dst);
  uint32_t src_line_offset = src_line_length - sw * src_bpp;
  uint32_t dst_line_offset = dst_line_length - dw * dst_bpp;

  return_value_if_fail(sx >= 0 && sy >= 0 && (sx + sw) <= src_iw && (sy + sh) <= src_ih,
                       RET_BAD_PARAMS);
  return_value_if_fail(dx >= 0 && dy >= 0 && (dx + dw) <= dst_iw && (dy + dh) <= dst_ih,
                       RET_BAD_PARAMS);

  if (sw == dw && sh == dh) {
    srcp += (sy * src_line_length + sx * src_bpp);
    dstp += (dy * dst_line_length + dx * dst_bpp);

    for (j = 0; j < dh; j++) {
      for (i = 0; i < dw; i++) {
        blend(dstp, srcp);
        dstp += dst_bpp;
        srcp += src_bpp;
      }
      dstp += dst_line_offset;
      srcp += src_line_offset;
    }
  } else {
    float_t scale_x = (float_t)sw / (float_t)dw;
    float_t scale_y = (float_t)sh / (float_t)dh;

    dstp += (dy * dst_line_length + dx * dst_bpp);
    for (j = 0; j < dh; j++) {
      uint32_t y = sy + j * scale_y;
      uint8_t* row_data = ((uint8_t*)(src->data)) + y * src_line_length;

      for (i = 0; i < dw; i++) {
        uint32_t x = sx + i * scale_x;

        srcp = row_data + x * src_bpp;
        blend(dstp, srcp);
        dstp += dst_bpp;
      }
      dstp += dst_line_offset;
    }
  }

  return RET_OK;
}

static ret_t blend_image_with_alpha(bitmap_t* dst, bitmap_t* src, rect_t* dst_r, rect_t* src_r,
                                    uint8_t a) {
  wh_t i = 0;
  wh_t j = 0;
  xy_t sx = src_r->x;
  xy_t sy = src_r->y;
  wh_t sw = src_r->w;
  wh_t sh = src_r->h;
  xy_t dx = dst_r->x;
  xy_t dy = dst_r->y;
  wh_t dw = dst_r->w;
  wh_t dh = dst_r->h;
  wh_t src_iw = src->w;
  wh_t src_ih = src->h;
  wh_t dst_iw = dst->w;
  wh_t dst_ih = dst->h;
  uint8_t* srcp = (uint8_t*)(src->data);
  uint8_t* dstp = (uint8_t*)(dst->data);
  uint8_t src_bpp = bitmap_get_bpp(src);
  uint8_t dst_bpp = bitmap_get_bpp(dst);
  uint32_t src_line_length = bitmap_get_line_length(src);
  uint32_t dst_line_length = bitmap_get_line_length(dst);
  uint32_t src_line_offset = src_line_length - sw * src_bpp;
  uint32_t dst_line_offset = dst_line_length - dw * dst_bpp;

  return_value_if_fail(sx >= 0 && sy >= 0 && (sx + sw) <= src_iw && (sy + sh) <= src_ih,
                       RET_BAD_PARAMS);
  return_value_if_fail(dx >= 0 && dy >= 0 && (dx + dw) <= dst_iw && (dy + dh) <= dst_ih,
                       RET_BAD_PARAMS);

  if (sw == dw && sh == dh) {
    srcp += (sy * src_line_length + sx * src_bpp);
    dstp += (dy * dst_line_length + dx * dst_bpp);

    for (j = 0; j < dh; j++) {
      for (i = 0; i < dw; i++) {
        blend_a(dstp, srcp, a);
        dstp += dst_bpp;
        srcp += src_bpp;
      }
      dstp += dst_line_offset;
      srcp += src_line_offset;
    }
  } else {
    float_t scale_x = (float_t)sw / (float_t)dw;
    float_t scale_y = (float_t)sh / (float_t)dh;

    dstp += (dy * dst_line_length + dx * dst_bpp);
    for (j = 0; j < dh; j++) {
      uint32_t y = sy + j * scale_y;
      uint8_t* row_data = ((uint8_t*)(src->data)) + y * src_line_length;

      for (i = 0; i < dw; i++) {
        uint32_t x = sx + i * scale_x;

        srcp = row_data + x * src_bpp;
        blend_a(dstp, srcp, a);
        dstp += dst_bpp;
      }
      dstp += dst_line_offset;
    }
  }

  return RET_OK;
}
