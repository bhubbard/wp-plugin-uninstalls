#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_menu_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_menu_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_menu_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_menu_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_redirect_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_redirect_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_redirect_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_redirect_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_redirect_url'"
