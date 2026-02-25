#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'ekl_rss_process_rss_sources_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ekl_rss_rss_item_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ekl_rss_rss_item_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ekl_rss_rss_item_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ekl_rss_rss_item_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ekl_rss_rss_item_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ekl_rss_rss_item_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ekl_rss_rss_item_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ekl_rss_rss_item_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ekl_rss_rss_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ekl_rss_rss_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ekl_rss_rss_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ekl_rss_rss_item_id'"
