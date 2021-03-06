build:
	go build

test:
	go test -v -race -timeout 4000s -test.run=.

bench:
	go test -v -timeout 4000s -test.run=. -test.bench=. -test.benchmem=true

coverage:
	go test -coverprofile=coverage.out
	go tool cover -html=coverage.out
	rm -rf coverage.out

clean:
	rm -rf coverage.out dbtest *.mprof *.pprof *.svg
