apiVersion: apps/v1
kind: Deployment
metadata:
  name: www
  namespace: www
spec:
  replicas: 1
  selector:
    matchLabels:
      app: www
  template:
    metadata:
      labels:
        app: www
    spec:
      containers:
      - name: www
        image: ${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}
        ports:
          - containerPort: 80