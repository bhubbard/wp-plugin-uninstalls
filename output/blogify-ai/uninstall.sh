#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blogify_client_secret'
wp option delete 'blogify_display_admin_menu_pages'

# Delete Transients
wp transient delete 'blogify_user_details'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogify_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogify_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogify_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogify_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blogify_meta_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blogify_meta_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blogify_meta_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blogify_meta_tags'"
