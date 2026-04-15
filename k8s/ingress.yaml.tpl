apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: www
  namespace: www
spec:
  ingressClassName: traefik
  tls:
  - hosts:
    - www.jamespacheco.dev
    secretName: jamespacheco-dev-tls
  rules:
  - host: www.${DOMAIN}
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: www
            port:
              number: 80