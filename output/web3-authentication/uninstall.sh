#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo_web3_new_registration'
wp option delete 'mo_web3_verify_customer'
wp option delete 'mo_web3_registration_status'
wp option delete 'mo_web3_host_name'
wp option delete 'mo_web3_admin_email'
wp option delete 'mo_web3_admin_phone'
wp option delete 'mo_web3_admin_customer_key'
wp option delete 'mo_web3_admin_api_key'
wp option delete 'mo_web3_customer_token'
wp option delete 'mo_web3_new_customer'
wp option delete 'mo_web3_message'
wp option delete 'mo_web3_display_login_button'
wp option delete 'mo_web3_nft_settings'
wp option delete 'mo_web3_button_custom_text'
wp option delete 'mo_web3_display_multiple_button'
wp option delete 'mo_web3_plugin_version'
wp option delete 'mo_web3_demosite_trial_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wallet_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wallet_address'"
