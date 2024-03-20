#!/bin/sh

# Assign the value of Build.BuildId to the variable build_ID
value="Build.BuildId)"
old_tag="\$($value"
new_tag="$(Build.BuildId)"
echo "Old Tag is: $old_tag"
echo "Build ID is: $new_tag"



# Navigate to the directory containing the YAML file
cd /home/vsts/work/r1/a/_devops-exercise-azure-aks-CI/drop/kubernetes

# Check if the YAML file exists
if [ -f "azure-aks.yaml" ]; then
  echo "File exists. Proceeding with sed..."
  # Use sed to replace the old tag with the new tag in the YAML file
  sed -i "s/${old_tag}/${new_tag}/g" azure-aks.yaml

  # Display the updated YAML file
  cat azure-aks.yaml
else
  echo "File not found."
fi