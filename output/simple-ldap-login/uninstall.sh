#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpleldap_account_suffix'
wp option delete 'simpleldap_base_dn'
wp option delete 'simpleldap_domain_controllers'
wp option delete 'simpleldap_directory_type'
wp option delete 'simpleldap_group'
wp option delete 'simpleldap_account_type'
wp option delete 'simpleldap_ol_login'
wp option delete 'simpleldap_use_tls'
wp option delete 'simpleldap_login_mode'
wp option delete 'simpleldap_security_mode'

