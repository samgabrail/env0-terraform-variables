# Overview
A repo to demo the use of Terraform variables using the Domino's Pizza provider.

- [ ] Defining and Assigning Variables
- [ ] Variable Types
- [ ] Input Variables
- [ ] Local Variables
- [ ] Output Variables
- [ ] Variable Validation
- [ ] Sensitive Variables and Security
- [ ] Variable Precedence
    1. Environment variables (TF_VAR_variable_name)
    2. The `terraform.tfvars` file
    3. The `terraform.tfvars.json` file
    4. Any `*.auto.tfvars` or `*.auto.tfvars.json` files, processed in lexical order of their filenames.
    5. Any `-var` and `-var-file` options on the command line, in the order they are provided.
    6. Variable defaults
- [ ] Tips and Best Practices
    1. Use a consistent naming convention for variables and provide descriptive variable descriptions to improve code readability.
    2. Store variable declarations in a separate variables.tf file.
    3. Use reasonable default values for optional variables.
    4. Consider using local variables and built-in functions to simplify your configurations and perform complex operations.
    5. Use validation rules to enforce constraints on variable values.
    6. Mark sensitive variables as such to prevent accidental exposure.
    7. Consider using a Terraform Automation & Collaboration Software (TACOS) such as env0 where you can securely store your sensitive variables.