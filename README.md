# 使用Docker 建置Go環境

## 快速建置
1. 搜尋image
```
    > docker search golang -f is-official=true
```
2. 下載image到本機
```
    > docker pull golang
```
3. 確認下載
```
    > docker images
```
3. 將container建立起來
```
    > docker run -it golang bash

        /go
            -bin/ //放編譯後可執行的檔案
            -src/ //存放原始碼
```
4. 使用docker compose

```
## docker compose up -[options] -[serveice name]
docker compose up -d go-app
```

5. 設定環境變數 
```
> export GOPATH=/usr/src/app
> export GO111MODULE=off 
```
golag 預設會到GOROOT 找package 若沒有，再到GOPATH找
修改GOPATH為專案路徑
GOROOT設為go內部的package,若設定錯誤可用
```
> unset GORPOOT
```
GO111MODULE=auto //預設為使用go moudle

GO111MODULE=on //使用go moudle, 需要有go.mod檔案

GO111MODULE=off //停用go moudle,不可有go.mod檔案

6. go build

```
go build -o bin/main.exe src/main/main.go
```
7. go install

.a 檔案是編譯過後的套件，因此，你看到的 hello.a，就是 hello.go 編譯之後的結果，如果編譯時需要某個套件，而對應的 .a 檔案存在，且原始碼自上次編譯後未曾經過修改，那麼就會直接使用 .a 檔案，而不是從原始碼開始編譯起。
```
 go install hello 
```

## os.Args

執行時使用command line的參數

