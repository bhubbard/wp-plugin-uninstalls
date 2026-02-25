#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfe_purchase_form_page_id'
wp option delete 'sfe_whitelist'
wp option delete 'sfe_envato_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfe_user_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfe_user_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfe_user_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfe_user_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfe_item_verify_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfe_item_verify_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfe_item_verify_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfe_item_verify_id'"
