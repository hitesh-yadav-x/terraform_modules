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
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_special"></a> [allow\_special](#input\_allow\_special) | Specifies the minimum number of special characters in the generated password. | `bool` | `true` | no |
| <a name="input_length"></a> [length](#input\_length) | Specifies the length of the random password to be generated. | `number` | `15` | no |
| <a name="input_min_lower"></a> [min\_lower](#input\_min\_lower) | Specifies the minimum number of lowercase characters in the generated password. | `number` | `1` | no |
| <a name="input_min_numeric"></a> [min\_numeric](#input\_min\_numeric) | Specifies the minimum number of numeric characters in the generated password. | `number` | `1` | no |
| <a name="input_min_special"></a> [min\_special](#input\_min\_special) | Specifies the minimum number of special characters in the generated password. | `number` | `1` | no |
| <a name="input_min_upper"></a> [min\_upper](#input\_min\_upper) | Specifies the minimum number of uppercase characters in the generated password. | `number` | `1` | no |
| <a name="input_override_special"></a> [override\_special](#input\_override\_special) | Specifies the special characters to be used in the password. | `string` | `"!@#$%&*()-_=+[]{}<>:?"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_password"></a> [password](#output\_password) | Randomly generated password. |
