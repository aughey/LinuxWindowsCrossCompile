#include "Hello.h"
#include <iostream>

void Hello::SayHello()
{
    std::cout << HelloString() << std::endl;
}

std::string Hello::HelloString()
{
    return "Hello, World!";
}