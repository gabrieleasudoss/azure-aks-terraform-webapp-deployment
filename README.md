# azure-aks-terraform-webapp-deployment

This code repository demonstrates the deployment of a Flask web application to Azure using Docker containers and Kubernetes. The deployment process includes configuring and deploying supporting infrastructure as code using Terraform. Additionally, the repository includes automation for building and deploying the Flask web application, allowing for easy deployment, destruction, and redeployment of the application and its infrastructure.


1. Deploy a Flask web application to Azure.

      ![azure-aks-terraform-webapp-deployment](images/aks_17.png)

2. Deploy the Flask web application as a Docker Container.

      ![azure-aks-terraform-webapp-deployment](images/aks_10.png)

3. Deploy the Docker Container using Kubernetes.


      ![azure-aks-terraform-webapp-deployment](images/aks_15.png)


4. Any supporting infrastructure is configured and deployed as code - Terraform


      ![azure-aks-terraform-webapp-deployment](images/aks_2.png)


  I have 2 folders namely for creating Terraform Infarstructure

  - terraform-setup
    - For setting basic Infarstructure for Terraform pipeline namely Storage account to store terraform state etc.
 
      ![azure-aks-terraform-webapp-deployment](images/aks_14.png)


  - terraform-ask
    - For setting Kubernets and Azure container Registry etc.

      ![azure-aks-terraform-webapp-deployment](images/aks_11.png)


      ![azure-aks-terraform-webapp-deployment](images/aks_12.png)


      ![azure-aks-terraform-webapp-deployment](images/aks_13.png)


5. Any build and deployment automation in deploying the Flask web application.
   - devops-exercise-azure-aks-CI
  
     
      ![azure-aks-terraform-webapp-deployment](images/aks_16.png)
     
      ![azure-aks-terraform-webapp-deployment](images/aks_4.png)

     
  - devops-exercise-azure-aks-CD

      ![azure-aks-terraform-webapp-deployment](images/aks_5.png)

      ![azure-aks-terraform-webapp-deployment](images/aks_7.png)

      ![azure-aks-terraform-webapp-deployment](images/aks_6.png)


6. Demonstrating the ability to deploy, destroy, and re-deploy the Flask web application and any supporting infrastructure.

   -  Destory and re-deploy of Infrastructure

       ![azure-aks-terraform-webapp-deployment](images/aks_8.png)

       ![azure-aks-terraform-webapp-deployment](images/aks_9.png)

   - Deploy and re-deploy of Website

       ![azure-aks-terraform-webapp-deployment](images/aks_19.png)

       ![azure-aks-terraform-webapp-deployment](images/aks_17.png)

       ![azure-aks-terraform-webapp-deployment](images/aks_18.png)