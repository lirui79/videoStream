all: rtsp_client_stream

rtsp_client_stream:rtsp_client_stream.c
	gcc -fPIC -D__STDC_CONSTANT_MACROS -I../include -L../lib rtsp_client_stream.c -o rtsp_client_stream  -lpthread -lavformat -lavcodec -lavutil -lswscale -lswresample -lavfilter 


clean:
	rm -rf rtsp_client_stream 
