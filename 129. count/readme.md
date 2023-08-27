```terraform plan -destroy -target="azurerm_resource_group.example" -out plan.out```



Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # azurerm_resource_group.example will be destroyed
  - resource "azurerm_resource_group" "example" {
      - id       = "/subscriptions/2b973e4e-43f9-4abc-bbde-e7c7cb004949/resourceGroups/rg-destroy-wiht-plan-demo" -> null
      - location = "eastus" -> null
      - name     = "rg-destroy-wiht-plan-demo" -> null
      - tags     = {
          - "cost_center" = "1234"
          - "project"     = "learning"
        } -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.
╷
│ Warning: Resource targeting is in effect
│
│ You are creating a plan with the -target option, which means that the result of this plan may not represent  
│ all of the changes requested by the current configuration.
│
│ The -target option is not for routine use, and is provided only for exceptional situations such as
│ recovering from errors or mistakes, or when Terraform specifically suggests to use it as part of an error    
│ message.
╵

────────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Saved the plan to: plan.out