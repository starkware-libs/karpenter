# Get eksctl cluster endpoint URL.
export CLUSTER_ENDPOINT=$(aws eks describe-cluster --name ${CLUSTER_NAME} \
--query "cluster.endpoint" --output text)

# Patch karpenter configmap.
kubectl patch configmap/karpenter-global-settings --type merge \
-p '{"data":{"aws.clusterEndpoint":"'"$CLUSTER_ENDPOINT"'"}}'
