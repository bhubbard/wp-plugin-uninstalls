#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'royal_links_notice_broken_dismissed'
wp option delete 'royal_links_link_prefix'
wp option delete 'royal_links_enable_nofollow'
wp option delete 'royal_links_enable_sponsored'
wp option delete 'royal_links_open_new_tab'
wp option delete 'royal_links_default_redirect_type'
wp option delete 'royal_links_track_clicks'
wp option delete 'royal_links_track_ip'
wp option delete 'royal_links_enable_link_checker'
wp option delete 'royal_links_flush_rewrite_rules'
wp option delete 'royal_links_track_admin_clicks'
wp option delete 'royal_links_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'royal_links_%'"
wp option delete 'royal_links_uninstall_delete_data'

# Clear Cron Jobs
wp cron event delete 'royal_links_check_broken_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_destination_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_sponsored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_sponsored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_sponsored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_sponsored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_total_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_total_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_total_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_total_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_unique_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_unique_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_unique_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_unique_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_last_click'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_last_click'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_last_click'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_last_click'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_is_broken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_is_broken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_is_broken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_is_broken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_last_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_last_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_last_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_last_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_royal_links_last_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_royal_links_last_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_royal_links_last_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_royal_links_last_status'"
