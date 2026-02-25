#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_share_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_share_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_share_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_share_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_share_total_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_share_total_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_share_total_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_share_total_count'"
