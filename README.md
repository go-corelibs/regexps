[![godoc](https://img.shields.io/badge/godoc-reference-blue.svg)](https://pkg.go.dev/github.com/go-corelibs/regexps)
[![codecov](https://codecov.io/gh/go-corelibs/regexps/graph/badge.svg?token=0OdOVL6gMb)](https://codecov.io/gh/go-corelibs/regexps)
[![Go Report Card](https://goreportcard.com/badge/github.com/go-corelibs/regexps)](https://goreportcard.com/report/github.com/go-corelibs/regexps)

# regexps - caching regexp compiler and common regexp patterns

regexps is a simple package for common regexp patterns and a caching
regexp compilation system.

# Installation

``` shell
> go get github.com/go-corelibs/regexps@latest
```

# Examples

## Compile, ClearCache

``` go
func main() {
    var err error
    var rx *regexp.Regexp

    // this first call tries to compile the broken pattern
    rx, err = regexps.Compile(`[not a thing`)
    // this second call just returns the prior results for
    // the same broken pattern
    rx, err = regexps.Compile(`[not a thing`)
    // this next call actually compiles a regexp instance
    rx, err = regexps.Compile(`[not] a thing`)
    // trying the same pattern again just returns the prior
    // instance
    rx, err = regexps.Compile(`[not] a thing`)

    // in case clearing the cached results is necessary...
    regexps.ClearCache()
}
```

# Go-CoreLibs

[Go-CoreLibs] is a repository of shared code between the [Go-Curses] and
[Go-Enjin] projects.

# License

```
Copyright 2023 The Go-CoreLibs Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use file except in compliance with the License.
You may obtain a copy of the license at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[Go-CoreLibs]: https://github.com/go-corelibs
[Go-Curses]: https://github.com/go-curses
[Go-Enjin]: https://github.com/go-enjin
