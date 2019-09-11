# maxmind-geolite-mysql-docker
Maxmind GeoLite2 database with docker MySQL

## GeoLite2 Database with MySQL

検証用途でIP geolocationデータをMySQL化した際の設定ファイルです。

データは Maxmind の GeoLite2:
https://dev.maxmind.com/geoip/geoip2/geolite2/

IPを整数化してインポートする部分、検索用のストアドプロシージャはこちらをそのまま使わせてもらっています。
https://www.proxynova.com/proxy-articles/install-maxmind-geoip2/

## Usage

以下でGeoLite2データのダウンロードから`docker-compose up`まで実行します。
```
make up
```

起動後のデータ削除はこちらを実行することで掃除します。
```
make clean
```

