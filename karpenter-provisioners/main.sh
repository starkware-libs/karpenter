# Waiting for karpenter pods to be ready.
kubectl wait --for=condition=ready pod -l app.kubernetes.io/name=$KARPENTER_APP_NAME

# Create karpenter provisioners.

kubectl apply -f /config
