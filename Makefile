new_post:
	hugo new blog/$(name).org

server_start:
	killall hugo || true
	hugo server -D
