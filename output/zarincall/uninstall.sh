#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zarincall_api_key'
wp option delete 'zarincall_wellcome_isEnable'
wp option delete 'zarincall_woocommrece_onOrderCompelete_isEnable'
wp option delete 'zarincall_woocommrece_add_phone_register_isEnable'
wp option delete 'zarincall_wellcome_fileId'
wp option delete 'zarincall_woocommrece_onOrderCompelete_fileId'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zarincall_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zarincall_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zarincall_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zarincall_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
