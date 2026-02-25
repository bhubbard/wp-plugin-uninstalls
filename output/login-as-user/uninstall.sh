#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_as_user_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lau_cart_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lau_cart_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lau_cart_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lau_cart_backup'"
