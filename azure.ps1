Login-AzureRmAccount

New-AzureRmResourceGroup -Name "myResourceGroup" -Location " South Central US "
New-AzureRmResourceGroupDeployment -ResourceGroupName "myResourceGroup" -TemplateUri "https://raw.githubusercontent.com/ChenJiaLun/devops-on-azure/master/azuredeploy.json"
