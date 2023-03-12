#ifndef STOCK_H
#define STOCK_H

#include <string>
#include <vector>

class Stock{
    public:
    std::string symbol;

    void Update();
    void Display(int rows);

    Stock(std::string stockSymbol);
    
    //std::vector<std::string> date; //not used
    std::vector<float> open;
    std::vector<float> high;
    std::vector<float> low;
    std::vector<float> close;
    std::vector<float> volume;
    //std::vector<float> name;


    private:
    void ReadDataFile();


};


#endif