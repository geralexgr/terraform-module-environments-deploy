# terraform-module-environments-deploy
Deploy different environments with Terraform modules

The app service module is placed inside **modules** folder. The variables should be passed on the different environment itself and must be declared on variables.tf inside the module. Additional settings can be provided on the appservice.tf file in order to be extended from the test, prod environments. 


## Init

``` 
cd modules; terraform init
cd .. ; terraform init
```
## Deployment
```
terraform validate
terraform apply
```