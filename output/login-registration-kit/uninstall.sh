#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'user_registration_kit_account_page'
wp option delete 'name'
wp option delete 'lrk_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrk_user_account_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrk_user_account_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrk_user_account_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrk_user_account_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrk_avatar_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrk_avatar_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrk_avatar_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrk_avatar_image'"
