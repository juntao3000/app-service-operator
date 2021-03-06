apiVersion: apps/v1
kind: Deployment
metadata:
  name: app-service-operator
spec:
  replicas: 1
  selector:
    matchLabels:
      name: app-service-operator
  template:
    metadata:
      labels:
        name: app-service-operator
    spec:
      serviceAccountName: app-service-operator
      containers:
        - name: app-service-operator
          # Replace with the built image name
          image: REPLACE_IMAGE
          command:
          - app-service-operator
          imagePullPolicy: Always
          env:
            - name: WATCH_NAMESPACE
              valueFrom:
                fieldRef:
                  fieldPath: metadata.namespace
            - name: POD_NAME
              valueFrom:
                fieldRef:
                  fieldPath: metadata.name
            - name: OPERATOR_NAME
              value: "app-service-operator"
