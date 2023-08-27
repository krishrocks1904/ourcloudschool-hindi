```terraform init```

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/azurerm versions matching "3.0.0"...
- Installing hashicorp/azurerm v3.0.0...
- Installed hashicorp/azurerm v3.0.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.



 terraform plan -destroy -out plan.out
azurerm_resource_group.example: Refreshing state... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-e7c7cb004949/resourceGroups/rg-destroy-wiht-plan-demo]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
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

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: plan.out

To perform exactly these actions, run the following command to apply:
    terraform apply "plan.out"
PS C:\Rakesh\Terraform-hindi\115. destroy with plan>  terraform apply "plan.out"
azurerm_resource_group.example: Destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-e7c7cb004949/resourceGroups/rg-destroy-wiht-plan-demo]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 20s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 30s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 40s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 50s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 1m0s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 1m10s elapsed]
azurerm_resource_group.example: Still destroying... [id=/subscriptions/2b973e4e-43f9-4abc-bbde-...sourceGroups/rg-destroy-wiht-plan-demo, 1m20s elapsed]
azurerm_resource_group.example: Destruction complete after 1m22s

Apply complete! Resources: 0 added, 0 changed, 1 destroyed.