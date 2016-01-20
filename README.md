# apheleia Cookbook

This cookbook configures / installs [apheleia](https://github.com/FlukeNetworks/apheleia)

## Requirements

None

# Attributes

#### apheleia::default
| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
| `['apheleia']['version']` | String | Apheleia version | `0.1.0` |
| `['apheleia']['download_url']` | String | Download URL for the apheleia release tarball. | `https://github.com/FlukeNetworks/apheleia/releases/download/<version>/apheleia-<version>.tar.gz` |
| `['apheleia']['checksum']` | String | SHA1 checksum of the downloaded tarball | `351501f1a88e5ac6e1e3887ee027cd78ffad944edd28dfadaf800df5ba04ecef` |
| `['apheleia']['install_prefix']` | String | Installation prefix | `/usr` |

## Usage

#### apheleia::default

Just include `apheleia` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[apheleia]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github
