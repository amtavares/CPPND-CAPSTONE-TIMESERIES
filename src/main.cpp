// SDL
#include <glad/glad.h>
#include <SDL.h>
// Dear ImGui
//#include "imgui-style.h"
#include "imgui_impl_sdl.h"
#include "imgui_impl_opengl3.h"

#include <iostream>
#include "stock.h"





int main() {
    std::cout << "\nStart --------- \n";

    //std::string dataPath = "data/individual_stocks_5yr";

    Stock s = Stock("AAPL");
    

    std::cout << "\nUpdating";

    s.Update();

    s.Display(10);


    //##################################################






    //###################################################

    std::cout<< "\n END ----------\n";



    return 0;
}