#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'general_user_avatars_caps'
wp option delete 'avatar_woocommerce_impostazioni'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'general_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'general_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'general_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'general_user_avatar'"
