#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'authors_list_item_draft_%'"
wp option delete 'authors_list_items'
wp option delete 'authors_list_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'authors_list_item_settings_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tumblr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tumblr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tumblr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tumblr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiktok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiktok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiktok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiktok'"
