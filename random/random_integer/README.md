## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [random_integer.integer](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_maximum"></a> [maximum](#input\_maximum) | Specifies the maximum value of the random id to be generated. | `number` | `9999` | no |
| <a name="input_minimum"></a> [minimum](#input\_minimum) | Specifies the minimum value of the random id to be generated. | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_random_integer"></a> [random\_integer](#output\_random\_integer) | Randomly generated integer. |
