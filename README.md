# azure-aks-terraform-webapp-deployment

This code repository demonstrates the deployment of a web application to Azure using Docker containers and Kubernetes. The deployment process includes configuring and deploying supporting infrastructure as code using Terraform or ARM templates. Additionally, the repository includes automation for building and deploying the web application, allowing for easy deployment, destruction, and redeployment of the application and its infrastructure.


1. Deploy a web application to Azure.

      ![azure-aks-terraform-webapp-deployment](aks_17)

2. Deploy the web application as a Docker Container.

      ![azure-aks-terraform-webapp-deployment](aks_10)

3. Deploy the Docker Container using Kubernetes.


      ![azure-aks-terraform-webapp-deployment](aks_15)


4. Any supporting infrastructure is configured and deployed as code (e.g., Terraform, ARM)


      ![azure-aks-terraform-webapp-deployment](aks_2)


  I have 2 folders namely for creating Terraform Infarstructure

  - terraform-setup
    - For setting basic Infarstructure for Terraform pipeline namely Storage account to store terraform state etc.
 
      ![azure-aks-terraform-webapp-deployment](aks_14)


  - terraform-ask
    - For setting Kubernets and Azure container Registry etc.

      ![azure-aks-terraform-webapp-deployment](aks_11)


      ![azure-aks-terraform-webapp-deployment](aks_12)


      ![azure-aks-terraform-webapp-deployment](aks_13)


5. Any build and deployment automation in deploying the web application.
   - devops-exercise-azure-aks-CI
  
     
      ![azure-aks-terraform-webapp-deployment](aks_16)
     
      ![azure-aks-terraform-webapp-deployment](aks_4)

     
  - devops-exercise-azure-aks-CD

      ![azure-aks-terraform-webapp-deployment](aks_5)

      ![azure-aks-terraform-webapp-deployment](aks_7)

      ![azure-aks-terraform-webapp-deployment](aks_6)


6. Demonstrating the ability to deploy, destroy, and re-deploy the web application and any supporting infrastructure.

   -  Destory and re-deploy of Infrastructure

       ![azure-aks-terraform-webapp-deployment](aks_8)

       ![azure-aks-terraform-webapp-deployment](aks_9)

   - Deploy and re-deploy of Website

       ![azure-aks-terraform-webapp-deployment](aks_19)

       ![azure-aks-terraform-webapp-deployment](aks_17)

       ![azure-aks-terraform-webapp-deployment](aks_18)