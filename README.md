# Kubernetes Blue-Green Deployment

## Objective

This project demonstrates the Blue-Green deployment strategy using Kubernetes.

## Project Files

- blue-deployment.yaml
- green-deployment.yaml
- service.yaml
- switch.sh

## Deployment Steps

Deploy Blue

```bash
kubectl apply -f blue-deployment.yaml
```

Deploy Green

```bash
kubectl apply -f green-deployment.yaml
```

Create Service

```bash
kubectl apply -f service.yaml
```

Switch Traffic

```bash
./switch.sh
```

## Rollback

To roll back to the Blue deployment:

```bash
kubectl patch service sample-app-service \
-p '{"spec":{"selector":{"app":"sample-app","version":"blue"}}}'
```

## Blue-Green Deployment Workflow

1. Deploy Blue version.
2. Deploy Green version.
3. Test Green deployment.
4. Switch traffic from Blue to Green.
5. Roll back to Blue if issues are found.

## What I Learned

- Kubernetes Deployments
- Kubernetes Services
- Blue-Green deployment strategy
- Zero-downtime deployment
- Rollback techniques

## Challenges Faced

Understanding traffic switching between two deployments and implementing rollback procedures was initially challenging. This project helped me understand how Blue-Green deployments minimize downtime during application updates.
