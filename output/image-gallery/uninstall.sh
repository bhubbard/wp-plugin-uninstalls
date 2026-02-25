#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'imagepress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ax_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ax_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ax_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ax_post_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_upload_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_upload_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_upload_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_upload_limit'"
