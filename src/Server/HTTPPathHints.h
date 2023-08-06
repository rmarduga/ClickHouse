#pragma once

#include <base/types.h>

#include <Common/NamePrompter.h>

namespace DB
{

class HTTPPathHints : public IHints<1, HTTPPathHints>
{
public:
    std::vector<String> getAllRegisteredNames() const override;
    void add(const String & httpPath);

private:
    std::vector<String> httpPaths_;
};

using HTTPPathHintsPtr = std::shared_ptr<HTTPPathHints>;

}
