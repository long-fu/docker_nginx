obs push ip:1935/mylive/obs

# http://example.com[:port]/dir/streamname.m3u8
js pull http://[ip]:8080/live?port=1935&app=mylive&stream=obs

js pull http://192.168.2.111:8080/live?port=1935&app=mylive&stream=obs