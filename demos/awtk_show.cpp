//
// Created by lidaniu on 19-3-8.
//
#include "awtk.h"
#include "assets.h"
#include "mtcnn.h"
#include <sstream>
#include<math.h>
#include<opencv2/face.hpp>
#include<opencv2/core/core.hpp>
#include<opencv2/face/facerec.hpp>
#include "CvxText.h"
static color_t s_bg_color;
#define IM_WIDTH 640
#define IM_HEIGHT 480
#define IMG_LEN IM_WIDTH*IM_HEIGHT*4
using namespace std;
using namespace cv;
using namespace cv::face;
int faceRecTime = 0;
Ptr<FaceRecognizer> model;
widget_t* win =NULL;
int Predict(Mat src_image)  //识别图片
{
    Mat face_test;
    int predict = 0;
    //截取的ROI人脸尺寸调整
    if (src_image.rows >= 120)
    {
        //改变图像大小，使用双线性差值
        resize(src_image, face_test, Size(92, 112));

    }
    //判断是否正确检测ROI
    if (!face_test.empty())
    {
        //测试图像应该是灰度图
        predict = model->predict(face_test);
    }
    cout << predict << endl;
    return predict;
}

Mat image_mat;
MTCNN detector("../../demos/model");
float factor = 0.709f;
unsigned char src_img[IM_WIDTH*IM_HEIGHT*4]={0};
unsigned char src_rgba[IM_WIDTH*IM_HEIGHT*4]={0};
int minSize = 40;
VideoCapture cap(0);

void ConvertBetweenBGRAandRGBA(unsigned char* input, int pixel_width,
                               int pixel_height, unsigned char* output)
{
    int offset = 0;
    for (int y = 0; y < pixel_height; y++) {
        for (int x = 0; x < pixel_width; x++) {
            output[offset] = input[offset + 2];
            output[offset + 1] = input[offset + 1];
            output[offset + 2] = input[offset];
            output[offset + 3] = input[offset + 3];
            offset += 4;
        }
    }
}

void bgrTobgra(const unsigned char *im_yuv, unsigned char *dst) {
    const int IM_SIZE = IM_WIDTH * IM_HEIGHT;
    int A=0;
    for (int i = 0; i < IM_SIZE; ++i) {
        dst[4 * i] = im_yuv[3 * i];
        dst[4 * i + 1] = im_yuv[3 * i + 1];
        dst[4 * i + 2] = im_yuv[3 * i + 2];
        dst[4 * i + 3] = A;
    }
}
static int ToWchar(char* &src, wchar_t* &dest, const char *locale = "zh_CN.utf8")
{
    if (src == NULL) {
        dest = NULL;
        return 0;
    }

    // 根据环境变量设置locale
    setlocale(LC_CTYPE, locale);

    // 得到转化为需要的宽字符大小
    int w_size = mbstowcs(NULL, src, 0) + 1;

    // w_size = 0 说明mbstowcs返回值为-1。即在运行过程中遇到了非法字符(很有可能使locale
    // 没有设置正确)
    if (w_size == 0) {
        dest = NULL;
        return -1;
    }

    //wcout << "w_size" << w_size << endl;
    dest = new wchar_t[w_size];
    if (!dest) {
        return -1;
    }

    int ret = mbstowcs(dest, src, strlen(src)+1);
    if (ret <= 0) {
        return -1;
    }
    return 0;
}
static ret_t dummy_prepare_image(void* ctx, bitmap_t* image) {
    float threshold[3] = { 0.7f, 0.6f, 0.6f };
    rect_t r = rect_init(0, 0, image->w, image->h);
    cap >> image_mat;
    vector<FaceInfo> faceInfo = detector.Detect(image_mat, minSize, threshold, factor, 3);
    if(faceInfo.size() == 0){
        faceRecTime = 0;
    }
    for (int i = 0; i < faceInfo.size(); i++) {
        int x = (int) faceInfo[i].bbox.xmin;
        int y = (int) faceInfo[i].bbox.ymin;
        int w = (int) (faceInfo[i].bbox.xmax - faceInfo[i].bbox.xmin + 1);
        int h = (int) (faceInfo[i].bbox.ymax - faceInfo[i].bbox.ymin + 1);
        cv::rectangle(image_mat, cv::Rect(x, y, w, h), cv::Scalar(255, 0, 0), 2);
        Mat faceROI = image_mat(cv::Rect(x, y, w, h));
        Mat gray;
        cvtColor(faceROI, gray, CV_RGB2GRAY);//测试图像必须为灰度图
        equalizeHist(gray, gray); //变换后的图像进行直方图均值化处理
        resize(gray,gray,Size(270,270));


        CvxText text("../../demos/SimHei.ttf"); //指定字体
        cv::Scalar size1{ 60, 0.5, 0.1, 0 }; // (字体大小, 无效的, 字符间距, 无效的 }
        text.setFont(nullptr, &size1, nullptr, 0);
        char* str;
        wchar_t *w_str;

        switch (Predict(gray)) //对每张脸都识别
        {
            case 32:str = (char *)"李佳杞";faceRecTime++;  break;
            case 41:str = (char *)"庞超"; faceRecTime++;break;
            case 0:faceRecTime = 0; break;
            default: str = (char *)"Error";faceRecTime = 0; break;
        }
        ToWchar(str,w_str);
        if(faceRecTime >= 15 && faceRecTime <= 40){
            rectangle(image_mat,Point(200,180),Point(470,310),Scalar(255,214,51),-1,4);
            text.putText(image_mat, w_str, cv::Point(220,280), cv::Scalar(255, 255, 255));
        }
    }
    bgrTobgra(image_mat.data,src_img);
    ConvertBetweenBGRAandRGBA(src_img,IM_WIDTH,IM_HEIGHT,src_rgba);
    memcpy(const_cast<u_int8_t *>(image->data),src_rgba,IMG_LEN);
    image_fill(image, &r, s_bg_color);

    return RET_OK;
}
static ret_t on_paint_baseColor(void* ctx, event_t* evt) {
    widget_t* canvas_widget = WIDGET(ctx);
    canvas_t* c = paint_event_cast(evt)->c;
    vgcanvas_t* vg = canvas_get_vgcanvas(c);
//    color_t bg = color_init(187,241,255, 0xff);
    color_t bg = color_init(60,163,253, 0xff);
    rect_t r = rect_init(canvas_widget->x, canvas_widget->y, canvas_widget->w, canvas_widget->h);

    vgcanvas_save(vg);
    vgcanvas_clip_rect(vg, r.x, r.y, r.w, r.h);
    vgcanvas_translate(vg, r.x, r.y);
    vgcanvas_set_fill_color(vg, bg);
    vgcanvas_rect(vg, 0, 0, r.w, r.h);
    vgcanvas_fill(vg);
    vgcanvas_restore(vg);
    return RET_OK;
}

static ret_t on_paint_Time(void* ctx, event_t* evt) {
    widget_t* canvas_widget = WIDGET(ctx);
    canvas_t* c = paint_event_cast(evt)->c;
    vgcanvas_t* vg = canvas_get_vgcanvas(c);
    color_t bg = color_init(51,214,255, 0xff);
    color_t tc = color_init(0,0,0, 0xff);
    rect_t r = rect_init(canvas_widget->x, canvas_widget->y, canvas_widget->w, canvas_widget->h);

    vgcanvas_save(vg);
    vgcanvas_clip_rect(vg, r.x, r.y, r.w, r.h);
    vgcanvas_translate(vg, r.x, r.y);

    vgcanvas_set_fill_color(vg, bg);
    vgcanvas_rect(vg, 0, 0, r.w, r.h);
    vgcanvas_fill(vg);


    canvas_set_font(c, NULL, 20);
    canvas_set_text_color(c, tc);
    canvas_draw_text(c, L"Hello AWTK", 10, 0, 0);

    vgcanvas_restore(vg);

    return RET_OK;
}

static ret_t on_paint_UniUbi(void* ctx, event_t* evt) {
    widget_t* canvas_widget = WIDGET(ctx);
    canvas_t* c = paint_event_cast(evt)->c;
    vgcanvas_t* vg = canvas_get_vgcanvas(c);
    color_t bg = color_init(51,214,255, 0xff);
    color_t tc = color_init(255,255,255, 0xff);
    rect_t r = rect_init(canvas_widget->x, canvas_widget->y, canvas_widget->w, canvas_widget->h);

    vgcanvas_save(vg);
    vgcanvas_clip_rect(vg, r.x, r.y, r.w, r.h);
    vgcanvas_translate(vg, r.x, r.y);

    vgcanvas_set_fill_color(vg, bg);
    vgcanvas_rect(vg, 0, 0, r.w, r.h);
    vgcanvas_fill(vg);


    canvas_set_font(c, NULL, 23);
    canvas_set_text_color(c, tc);
    canvas_draw_text(c, L"Uni-Ubi", 10, -5, -IM_HEIGHT+5);
    vgcanvas_restore(vg);

    return RET_OK;
}
static ret_t on_paint_version(void* ctx, event_t* evt) {
    widget_t* canvas_widget = WIDGET(ctx);
    canvas_t* c = paint_event_cast(evt)->c;
    vgcanvas_t* vg = canvas_get_vgcanvas(c);
    color_t bg = color_init(51,214,255, 0xff);
    color_t tc = color_init(255,255,255, 0xff);
    rect_t r = rect_init(canvas_widget->x, canvas_widget->y, canvas_widget->w, canvas_widget->h);

    vgcanvas_save(vg);
    vgcanvas_clip_rect(vg, r.x, r.y, r.w, r.h);
    vgcanvas_translate(vg, r.x, r.y);

    vgcanvas_set_fill_color(vg, bg);
    vgcanvas_rect(vg, 0, 0, r.w, r.h);
    vgcanvas_fill(vg);


    canvas_set_font(c, NULL, 23);
    canvas_set_text_color(c, tc);
    canvas_draw_text(c, L"SS-V3.4", 10, -5, -IM_HEIGHT- 95);
//    canvas_draw_image(c,)
    vgcanvas_restore(vg);

    return RET_OK;
}
int main(void) {

    s_bg_color = color_init(0,0,0,0);
    char res_root[MAX_PATH + 1];
    char app_root[MAX_PATH + 1];
    path_app_root(app_root);
    memset(res_root, 0x00, sizeof(res_root));
    path_build(res_root, MAX_PATH, app_root, "demos", NULL);
    if (!path_exist(res_root)) {
        strcpy(res_root, app_root);
        log_debug("%s not exist, try %s\n", res_root, app_root);
    }
    if(!cap.isOpened()){
        cout<<"opencv Camera failed.\n";
        return RET_FAIL;
    }
    model = FisherFaceRecognizer::create();
    //1.加载训练好的分类器
    model->read("../../demos/model/MyFaceFisherModel.xml");// opencv2用load
    tk_init(IM_WIDTH,IM_HEIGHT + 150,APP_SIMULATOR, NULL, res_root);
    //tk_set_lcd_orientation(LCD_ORIENTATION_90);
    assets_init();
    widget_t* image = NULL;
    win = window_create(NULL, 0, 0, 0, 0);


    image = mutable_image_create(win, 0, 0, win->w, win->h);
    mutable_image_set_prepare_image(image, dummy_prepare_image,
                                    &s_bg_color);


    //控制下端底层颜色幕布
    widget_t* canvasbottom = canvas_widget_create(win, 0, IM_HEIGHT, IM_WIDTH, 150);
    widget_on(canvasbottom, EVT_PAINT, on_paint_baseColor, canvasbottom);

    //控制下端右侧幕布颜色、上面显示时间
    widget_t* canvasRight = canvas_widget_create(win, IM_WIDTH/2+60, IM_HEIGHT+ 10, IM_WIDTH/2 - 15, 130);
    widget_on(canvasRight, EVT_PAINT, on_paint_Time, canvasRight);
    widget_t* tc1 = digit_clock_create(win, IM_WIDTH/2, IM_HEIGHT+ 20, 240, 60);
    digit_clock_set_format(tc1, "hh:mm");
    widget_t* tc2= digit_clock_create(win, IM_WIDTH/2, IM_HEIGHT+ 40, 240, 60);
    digit_clock_set_format(tc2, "YYYY-MM-DD");

    //控制下端左上侧显示Uni-Ubi
    widget_t* canvasLeftUp = canvas_widget_create(win, 10, IM_HEIGHT+ 10, IM_WIDTH/2 +40, 80);
    widget_on(canvasLeftUp, EVT_PAINT, on_paint_UniUbi, canvasLeftUp);

    //控制下端左下侧显示版本号
    widget_t* canvasLeftDown = canvas_widget_create(win, 10, IM_HEIGHT+ 100, IM_WIDTH/2 +40, 40);
    widget_on(canvasLeftDown, EVT_PAINT, on_paint_version, canvasLeftDown);
    tk_run();
    return EXIT_SUCCESS;
}