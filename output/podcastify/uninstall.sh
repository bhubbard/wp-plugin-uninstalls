#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpp_setting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpp_redirection_feed%'"
wp option delete 'num_post_rss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'download_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'download_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'download_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'download_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
