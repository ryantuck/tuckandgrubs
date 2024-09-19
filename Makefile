# conversion works, sync back up to S3 too

%.mp4 : %.mov 
	docker run -v $$PWD:/config linuxserver/ffmpeg -i /config/$< -vcodec h264 -acodec aac /config/$@

%.mov : 
	curl https://tuckandgrubs.s3.amazonaws.com/$@ -o $@

