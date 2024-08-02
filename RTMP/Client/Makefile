all: rtmp_client_stream

rtmp_client_stream:rtmp_client_stream.c
	gcc -fPIC -D__STDC_CONSTANT_MACROS -I../include -L../lib rtmp_client_stream.c -o rtmp_client_stream  -lpthread -lavformat -lavcodec -lavutil -lswscale -lswresample -lavfilter 


clean:
	rm -rf rtmp_client_stream 
