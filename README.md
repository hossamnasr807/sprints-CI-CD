# sprints-CI-CD 🚀

This repository demonstrates a CI/CD pipeline using **GitHub Actions** and **Docker**.

## 🔧 Features
- GitHub Actions workflow for building and pushing Docker images.
- Docker Hub integration with automated tagging.
- Example of CI/CD best practices.

## 📦 Docker Image
The Docker image is available on Docker Hub:

```bash
docker pull hossamnasr807/cicd:latest
docker pull hossamnasr807/cicd:main
docker pull hossamnasr807/cicd:sha-3649fdd
```

## 🔑 Tags
- `latest`
- `main`
- `sha-3649fdd`

## 🚀 GitHub Actions Workflow
This repository uses the **docker/metadata-action** to automatically generate tags and labels.

Workflow file: [`.github/workflows/docker.yml`](https://github.com/hossamnasr807/sprints-CI-CD/blob/main/.github/workflows/docker.yml)

## 📝 How to Use
Clone the repository:
```bash
git clone https://github.com/hossamnasr807/sprints-CI-CD.git
cd sprints-CI-CD
```

Build the Docker image locally:
```bash
docker build -t hossamnasr807/cicd:local .
```

Run the container:
```bash
docker run --rm hossamnasr807/cicd:local
```

## 👤 Author
**Hossam Nasr**  
GitHub: [@hossamnasr807](https://github.com/hossamnasr807)  
Docker Hub: [hossamnasr807/cicd](https://hub.docker.com/r/hossamnasr807/cicd)

---
✅ CI/CD ready with GitHub Actions + Docker!
