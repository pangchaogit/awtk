#include "mtcnn.h"

#define landmark_n 68
void testCamera(){
    VideoCapture cap(0);
    if(!cap.isOpened()){
        cout<<"opencv Camera failed.\n";
        return ;
    }
    Mat image;
    MTCNN detector("../../demos/model");
    float factor = 0.709f;
    float threshold[3] = { 0.7f, 0.6f, 0.6f };
    int minSize = 40;
    double t = (double)cv::getTickCount();
    while(true){
        cap >> image;
        vector<FaceInfo> faceInfo = detector.Detect(image, minSize, threshold, factor, 3);
        for (int i = 0; i < faceInfo.size(); i++){
            int x = (int)faceInfo[i].bbox.xmin;
            int y = (int)faceInfo[i].bbox.ymin;
            int w = (int)(faceInfo[i].bbox.xmax - faceInfo[i].bbox.xmin + 1);
            int h = (int)(faceInfo[i].bbox.ymax - faceInfo[i].bbox.ymin + 1);
            cv::rectangle(image, cv::Rect(x, y, w, h), cv::Scalar(255, 0, 0), 2);
        }
#if 0
        for (int i = 0; i < faceInfo.size(); i++){
			float *landmark = faceInfo[i].landmark;
			for (int j = 0; j < 5; j++){
				cv::circle(image, cv::Point((int)landmark[2 * j], (int)landmark[2 * j + 1]), 2, cv::Scalar(255, 255, 0), 2);
			}
		}
#endif

        cv::imshow("image", image);
        cv::waitKey(1);
    }
    std::cout <<" time," << (double)(cv::getTickCount() - t) / cv::getTickFrequency() << "s"<<std::endl;

}
int main()
{
    testCamera();
}