apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: www
  namespace: www
spec:
  ingressClassName: traefik
  tls:
  - hosts:
    - ${DOMAIN}
    secretName: jamespacheco-dev-tls
  rules:
  - host: ${DOMAIN}
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: www
            port:
              number: 80