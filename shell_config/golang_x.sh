#!/bin/bash
# Install src on golang.org from github mirror and install binaries vim-go need

if [ ! $GOPATH ]
then
    echo "VARIABLE GOPATH NEED BE SET"
    exit 1
fi

GOLANGX=$GOPATH/src/golang.org/x

if [ ! -d $GOLANGX/tools ]
then
    git clone https://github.com/golang/tools.git $GOLANGX/tools
else
    cd $GOLANGX/tools && git pull -r
fi

cd $GOLANGX/tools/cmd/guru && go install
echo "install goru done"

cd $GOLANGX/tools/cmd/gorename && go install
echo "install gorename done"

cd $GOLANGX/tools/cmd/goimports && go install
echo "install goimports"

if [ ! -d $GOLANGX/net ]
then
    git clone https://github.com/golang/net.git $GOLANGX/net
else
    cd $GOLANGX/net && git pull -r
fi

if [ ! -d $GOLANGX/lint ]
then
    git clone https://github.com/golang/lint.git $GOLANGX/lint
    cd $GOLANGX/lint/golint && go install && echo "install golint"
else
    cd $GOLANGX/lint && git pull -r
fi

if [ ! -d $GOLANGX/sys ]
then
    git clone https://github.com/golang/sys.git $GOLANGX/sys
else
    cd $GOLANGX/sys && git pull -r
fi

if [ ! -d $GOLANGX/sync ]
then
    git clone https://github.com/golang/sync.git $GOLANGX/sync
else
    cd $GOLANGX/sync && git pull -r
fi
