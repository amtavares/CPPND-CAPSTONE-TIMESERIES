#ifndef ANALYSIS_H
#define ANALYSIS_H

#include <string>
#include <vector>

class Analysis{
    public:
    std::vector<float> SimpleMovingAverage(std::vector <float> values, int windowSize);
    std::vector<float> ExponentialMovingAverage(std::vector <float> values, int windowSize);



    float Maximum(std::vector<float> values);
    float Minimum(std::vector<float> values);
    float Average(std::vector<float> values);
    
};

#endif