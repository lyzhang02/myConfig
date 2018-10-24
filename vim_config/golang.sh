#!/bin/bash
# Install src on golang.org from github mirror and install binaries vim-go need
git clone https://github.com/golang/tools.git $GOPATH/src/golang.org/x/tools
cd $GOPATH/src/golang.org/x/tools/cmd/guru && go install && echo "install goru"
cd $GOPATH/src/golang.org/x/tools/cmd/gorename && go install && echo "install gorename"
cd $GOPATH/src/golang.org/x/tools/cmd/goimports && go install && echo "install goimports"
git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net
git clone https://github.com/golang/lint.git $GOPATH/src/golang.org/x/lint
cd $GOPATH/src/golang.org/x/lint/golint && go install && echo "install golint"
