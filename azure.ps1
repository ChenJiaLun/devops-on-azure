Login-AzureRmAccount

New-AzureRmResourceGroup -Name "myResourceGroup" -Location " South Central US "
New-AzureRmResourceGroupDeployment -ResourceGroupName "myResourceGroup" -TemplateUri "https://github.com/ChenJiaLun/devops-on-azure/blob/master/azuredeploy.json"
