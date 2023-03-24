update-helm-repo:
	helm lint hellocharts/ && \
	helm package hellocharts && \
	helm repo index --url https://github.com/nicholasSUSE/hello-helm . && \
	git add . && \
	git commit 