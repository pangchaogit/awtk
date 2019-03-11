#include <stdio.h>
#include <stdlib.h>
#include "video_capture.h"
//#include "draw_framebuffer.h"
#include "awtk.h"
#include "assets.h"
#include <pthread.h>
#include <time.h>
#include <stdio.h>
#include <unistd.h>
#define IMAGE_LEN IM_WIDTH * IM_HEIGHT*4
struct tm *ptime=NULL;
wchar_t time_str[1000];
unsigned char src_image[IMAGE_LEN];
static color_t s_bg_color;
widget_t *label_name=NULL;
widget_t *label_time=NULL;
widget_t* image=NULL;
widget_t* win=NULL;
static struct tm* GetTime()
{
    time_t tmpcal_ptr;
    struct tm *tmp_ptr = NULL;
    time(&tmpcal_ptr);
    tmp_ptr = localtime(&tmpcal_ptr);
    return tmp_ptr;
}
void ShowInfor()
{
    ptime=GetTime();
    memset(time_str,0,1000);
    sprintf (time_str,"%d年%d月%d日 %d:%d:%d\n",1900+ptime->tm_year,
            1+ptime->tm_mon, ptime->tm_mday,
            ptime->tm_hour, ptime->tm_min, ptime->tm_sec);
    printf("Time:%s\n",time_str);
    widget_use_style(label_name,"big_green");

    widget_use_style(label_time,"big_green");
    widget_set_text(label_time,time_str);
    widget_t *tc=digit_clock_create(win,300,300,240,30);
    digit_clock_set_format(tc,"YYYY年MM月DD日 hh:mm:ss");
    widget_layout(win);


}
static ret_t dummy_prepare_image(void* ctx, bitmap_t* bit_image) {

    video_capture(src_image);//get image data from camera;
    memcpy( bit_image->data,(uint8_t*)src_image,IMAGE_LEN);
    bit_image->format=BITMAP_FMT_RGBA8888;
    rect_t r = rect_init(0, 0, bit_image->w, bit_image->h);
    image_fill(bit_image, &r, s_bg_color);
    ShowInfor();
    return RET_OK;
}



int main(void) {
    s_bg_color = color_init(0,0,0,0);
    init_video_capture();
    char res_root[MAX_PATH + 1];
    char app_root[MAX_PATH + 1];
    path_app_root(app_root);
    memset(res_root, 0x00, sizeof(res_root));
    path_build(res_root, MAX_PATH, app_root, "demos", NULL);
    if (!path_exist(res_root)) {
        strcpy(res_root, app_root);
        log_debug("%s not exist, try %s\n", res_root, app_root);
    }
    tk_init(IM_WIDTH,IM_HEIGHT,APP_SIMULATOR, NULL, res_root);
    //tk_set_lcd_orientation(LCD_ORIENTATION_90);
    assets_init();
    widget_t* image = NULL;
    widget_t* win = window_create(NULL, 0, 0, 0, 0);
    label_name=label_create(win,200,300,80,40);
    widget_set_text(label_name,L"庞超");
    widget_layout(win);
    image = mutable_image_create(win, 0, 0, win->w, win->h);
    mutable_image_set_prepare_image(image, dummy_prepare_image,
            &s_bg_color);

   // label_time=label_create(win,300,200,150,20);

    tk_run();
    free_video_capture();
    return EXIT_SUCCESS;
}
