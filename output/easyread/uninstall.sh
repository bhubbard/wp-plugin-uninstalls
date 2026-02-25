#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'split_posts_by'
wp option delete 'activate_post_toggle'
wp option delete 'activate_page_toggle'
wp option delete 'split_pages_by'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyread_plugin_post_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyread_plugin_post_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyread_plugin_post_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyread_plugin_post_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyread_disable_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyread_disable_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyread_disable_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyread_disable_option'"
