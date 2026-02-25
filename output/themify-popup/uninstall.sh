#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'themify_saved_%'"
wp option delete 'themify_saved_colors'
wp option delete 'themify_saved_gradients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_page_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_page_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_page_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_page_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_show_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_show_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_show_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_show_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_limit_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_limit_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_limit_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_limit_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_attach_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_show'"
