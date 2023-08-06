#include <Server/HTTPPathHints.h>

namespace DB
{

void HTTPPathHints::add(const String & httpPath) 
{
    httpPaths_.push_back(httpPath);
}

std::vector<String> HTTPPathHints::getAllRegisteredNames() const
{
    return httpPaths_;
}

}
