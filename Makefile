
.PHONY: clean-test-dir make-unit-tests run-unit-tests build


clean-test-dir:
	rm -rf test_out/

make-unit-tests: clean-test-dir 
	gprbuild -p -f -Pharness

run-unit-tests: make-unit-tests
	./test_out/adavec_test
	rm -rf test_out/


build:
	@echo "*** building now! ***"
	alr build

build-release:
	@echo "*** building release now! ***"
	alr build --release

docker-build-no-cache:
	docker build --no-cache -t adavec:latest .

docker-build-image:
	docker build -t adavec:latest .

docker-run-unit-tests: docker-build-image
	@echo "*** running tests in docker container ***"
	docker run --rm -it adavec:latest make run-unit-tests