new_post:
	hugo new blog/$(name).org

server_start:
	killall hugo || true
	(sleep 2 && open "http://localhost:1313") & # Mac specific use xdg-open on linux
	hugo server -D

deploy:
	hugo
	cd ../blog-gen/ ;\
	git	add . ;\
	git commit -am "Site update `date -u`";\
	git push origin hugo;\
