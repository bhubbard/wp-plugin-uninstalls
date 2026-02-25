#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giftify_settings_giftify_checkbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giftify_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giftify_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giftify_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giftify_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giftify_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giftify_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giftify_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giftify_fees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'giftify_select'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'giftify_select'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'giftify_select'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'giftify_select'"
