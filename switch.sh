#!/bin/bash

echo "Switching traffic from Blue to Green..."

kubectl patch service sample-app-service \
-p '{"spec":{"selector":{"app":"sample-app","version":"green"}}}'

echo "Traffic switched successfully."
