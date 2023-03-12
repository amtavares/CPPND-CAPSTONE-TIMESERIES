#include <string>
#include <fstream>
#include <sstream>
#include <algorithm>
#include <iostream>
#include <iomanip> // setw 
#include "stock.h"

void Stock::ReadDataFile(){
    std::string dataFolderPath = "../data/individual_stocks_5yr/";
    std::string dataFilePath = dataFolderPath + symbol + "_data.csv";

    std::ifstream dataFile(dataFilePath);
    std::string line;

    if (dataFile.is_open()){
        int lineNumber = 0;
        while (std::getline(dataFile, line)) {
            lineNumber++;
            std::replace(line.begin(), line.end(), ',', ' ');
            std::stringstream lineStream(line);
            std::string Sdate, Sopen, Shigh, Slow, Sclose, Svolume;

            if (lineNumber > 1){
                if (lineStream >> Sdate >> Sopen >> Shigh >> Slow >> Sclose >> Svolume) {
                    
                    open.push_back(std::stof(Sopen));
                    high.push_back(std::stof(Shigh));
                    low.push_back(std::stof(Slow));
                    close.push_back(std::stof(Sclose));
                    volume.push_back(std::stof(Svolume));
                }
            }
            
        }
    }
}

void Stock::Display(int rows){
    std::cout << " Displaying the first " << std::to_string(rows) << " lines of stock " << symbol << "\n";
    //std::cout << "*** ";
    //std::cout << std::setw(6) << "open" << close;
    for(int i = 0; i < rows; i++){
        std::cout << "~~~ ";
        std::string str_open = std::to_string(open[i]);
        std::string str_high = std::to_string(high[i]);
        std::string str_low = std::to_string(low[i]);
        std::string str_close = std::to_string(close[i]);
        std::string str_volume = std::to_string(volume[i]);

        std::cout << str_open << " | " << str_high << " | " << str_low << " | " << str_close << " | " << str_volume << "\n";
        

    }
}

void Stock::Update(){

    // Purge the old values
    open.clear();
    high.clear();
    low.clear();
    close.clear();

    ReadDataFile();

    std::cout << "\n Update completed: \n";

}

Stock::Stock(std::string stockSymbol){
    symbol = stockSymbol;
}