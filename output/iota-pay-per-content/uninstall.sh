#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iota_pay_per_content_wallet_address'
wp option delete 'iota_pay_per_content_node_host'
wp option delete 'iota_pay_per_content_confirmed_payments'
wp option delete 'iotappc_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payUsingIOTA_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payUsingIOTA_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payUsingIOTA_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payUsingIOTA_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payUsingIOTA_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payUsingIOTA_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payUsingIOTA_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payUsingIOTA_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payUsingIOTA_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payUsingIOTA_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payUsingIOTA_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payUsingIOTA_unit'"
