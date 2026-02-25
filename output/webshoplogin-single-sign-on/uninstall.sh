#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsl_login_enable'
wp option delete 'wsl_plugin_activated'
wp option delete 'wsl_installation'
wp option delete 'wsl_installation_token'
wp option delete 'wsl_webshoplogin_account_exists'
wp option delete 'wsl_login_api_key'
wp option delete 'wsl_login_api_secret'
wp option delete 'wsl_login_state_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_user_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_user_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_user_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_user_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_customer_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_customer_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_customer_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_customer_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_billing_address_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_billing_address_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_billing_address_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_billing_address_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl_shipping_address_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl_shipping_address_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl_shipping_address_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl_shipping_address_version'"
