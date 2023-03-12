#include <string>
#include <vector>
#include <iostream>
#include <algorithm>
#include "analysis.h"

std::vector<float> Analysis::SimpleMovingAverage(std::vector <float> values, int windowSize){

    std::vector<float> result;

    if (static_cast<int>(values.size()) < windowSize)
    {
        // Not enough values to calculate a moving average
        return result;
    }

    float sum = 0.0f;

    // Calculate the sum of the first windowSize elements
    for (int i = 0; i < windowSize; i++)
    {
        sum += values[i];
    }

    // Add the first moving average value to the result vector
    result.push_back(sum / windowSize);

    // Calculate the moving average of the remaining elements
    for (int i = windowSize; i < static_cast<int>(values.size()); i++)
    {
        // Subtract the first element in the window and add the next element
        sum = sum - values[i - windowSize] + values[i];
        result.push_back(sum / windowSize);
    }

    return result;
}

std::vector<float> Analysis::ExponentialMovingAverage(std::vector <float> values, int smoothingFactor){
    std::vector<float> result;

    if (values.empty())
    {
        // No values to calculate EMA for
        return result;
    }

    // Initialize the first value of the EMA to the first value in the input values
    result.push_back(values[0]);

    // Calculate the EMA of the remaining elements
    for (int i = 1; i < static_cast<int>(values.size()); i++)
    {
        float ema = smoothingFactor * values[i] + (1 - smoothingFactor) * result[i - 1];
        result.push_back(ema);
    }

    return result;

};

float Analysis::Maximum(std::vector<float> values){
    
    auto max_value = std::max_element(values.begin(), values.end());
    return *max_value;
}
float Analysis::Minimum(std::vector<float> values){
    auto min_value =  std::min_element(values.begin(), values.end());
    return *min_value;
}
float Analysis::Average(std::vector<float> values){
    float sum = 0.0;

    for (float value : values) {
        sum += value;
    }

    return sum / values.size();

}

