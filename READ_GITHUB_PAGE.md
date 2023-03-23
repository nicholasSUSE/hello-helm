# Create Helm Repository Using Github Pages 

Reference: https://www.opcito.com/blogs/creating-helm-repository-using-github-pages

1. Create the public repository
2. Add your chart to it (Default Project Structure)
    ```
    .
    ├── hellocharts
    │   ├── charts
    │   ├── Chart.yaml
    │   ├── config1.toml
    │   ├── templates
    │   │   ├── configmap.yaml
    │   │   ├── _helpers.tpl
    │   │   └── NOTES.txt
    │   └── values.yaml
    ├── HelloCharts-0.1.0.tgz
    ├── index.yaml
    ├── READ_GITHUB_PAGE.md
    ├── README.md
    └── robots.txt
    ```
3. ```helm lint hellocharts/```
4. Create **robots.txt** file
    ```
    User-Agent: *
    Disallow: /
    ```
5. ```helm package hellocharts/``` Creates .tgz file
6. ```helm repo index --url https://github.com/nicholasSUSE/hello-helm . ``` Creates index.yaml file 
7. Git
    ```
    git status 
    git add . 
    git commit -m "your_commit_message" 
    git push origin main 
    ```
8. Follow steps in above link for **Creating Github Pages**

## Updating Helm Repository 
1. Make your changes **specially the chart version** if applicable
2. ```helm lint hellocharts/```
3. ```helm package hellocharts/``` 
4. ```helm repo index --url https://github.com/nicholasSUSE/hello-helm . ```
5. Git
    ```
    git status 
    git add . 
    git commit -m "your_commit_message" 
    git push origin main 
    ```
