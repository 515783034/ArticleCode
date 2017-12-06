#!/usr/bin/env bash 

# DataModel.proto转换成自己

cd $(cd `dirname $0`; pwd)

for i in find *.proto
do
    if [ $i == "find" ]; then
        continue
    fi
    protoc --swift_out=. $i
    echo "生成文件:$i.pb.swift"
done
