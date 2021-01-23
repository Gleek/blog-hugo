new_post:
	hugo new blog/$(name).org

server_start:
	killall hugo || true
	hugo server -D

deploy:
	hugo
	cd ../blog-gen/ ;\
	git	add . ;\
	git commit -am "Site update $(date -u)";\
	git push origin hugo;\
