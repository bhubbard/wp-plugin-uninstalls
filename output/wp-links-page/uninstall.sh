#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplp_free_passes_req'
wp option delete 'wplp_screenshot_size'
wp option delete 'wplp_screenshot_refresh'
wp option delete 'wplp_apikey'
wp option delete 'wplp_grid'
wp option delete 'wplf_grid'
wp option delete 'wplp_width'
wp option delete 'wplf_width'
wp option delete 'wplpf_grid'
wp option delete 'wplff_grid'
wp option delete 'wplpf_width'
wp option delete 'wplff_width'

# Clear Cron Jobs
wp cron event delete 'wp_ajax_wplf_ajax_update_screenshots'
wp cron event delete 'wp_links_page_event'
wp cron event delete 'wp_links_page_free_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_screenshot_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_screenshot_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_screenshot_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_screenshot_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_no_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_no_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_no_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_no_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_media_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_media_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_media_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_media_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplp_media_fav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplp_media_fav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplp_media_fav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplp_media_fav'"
