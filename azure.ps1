Get-AzureRmLocation | sort DisplayName | Select DisplayName
New-AzureRmResourceGroup -Name "myResourceGroup" -Location " South Central US "
New-AzureRmResourceGroupDeployment -ResourceGroupName "myResourceGroup" -TemplateUri "https://tonytrytouse.blob.core.windows.net/images/azuredeploy.json"

$httprule = New-AzureRmNetworkSecurityRuleConfig `
    -Name "myNetworkSecurityGroupRule" `
    -Description "Allow HTTP" `
    -Access "Allow" `
    -Protocol "Tcp" `
    -Direction "Inbound" `
    -Priority "100" `
    -SourceAddressPrefix "Internet" `
    -SourcePortRange * `
    -DestinationAddressPrefix * `
    -DestinationPortRange 3000

    $nsg = New-AzureRmNetworkSecurityGroup `
    -ResourceGroupName "myResourceGroup" `
    -Location "South Central US" `
    -Name "myNetworkSecurityGroup" `
    -SecurityRules $httprule

$nic = Get-AzureRmNetworkInterface -ResourceGroupName myresourcegroup -Name myvmnic
$nsg = Get-AzureRmNetworkSecurityGroup -ResourceGroupName myresourcegroup  -Name mynetworksecuritygroup
$nic.NetworkSecurityGroup = $nsg
Set-AzureRmNetworkInterface -NetworkInterface $nic