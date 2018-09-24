build: 
	docker build -t krypted/swarm .

start:
	docker run -p 8500:8500/tcp -e PASSWORD=$(password) -t krypted/swarm:latest -- -debug --verbosity 4

build_start: build start