## Chef Client Settings
default['chef_client']['interval']            = 1800
default['chef_client']['splay']               = 600
default['chef_client']['logrotate']['rotate'] = 16

## SELinux Settings

## OS-Hardening Settings
default['os-hardening']['security']['kernel']['disable_filesystems'] = %w(cramfs freevxfs jffs2 hfs hfsplus squashfs udf vfat)
default['auth']['pw_max_age'] = -1
default['auth']['pw_min_age'] = -1
default['auth']['pam']['passwdqc']['enable'] = false

## Audit Cookbook Settings
default['audit']['interval']['enabled'] = true
default['audit']['interval']['time']    = 10
default['audit']['fetcher']             = 'chef-server-automate'
default['audit']['reporter']            = 'chef-server-automate'
default['audit']['profiles'].push('name': 'Linux Baseline',
                                  'compliance': 'admin/linux-baseline')

## AuditD config
default['auditd']['ruleset'] = 'cis'

## chef-client version control
default['chef_client_updater']['version'] = '14.9.13'
default['chef_client_updater']['post_install_action'] = 'exec'
