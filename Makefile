
run: build
	docker ps | grep base_django_project_container &&\
 	docker container rm -f base_django_project_container

	docker run -d -p 8000:8000 --name base_django_project_container base_django_project

build:
	docker build -t base_django_project .

