#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdi_token_error_flag'
wp option delete 'wdi_sample_feed_post_id'
wp option delete 'wdi_version'
wp option delete 'wdi_sample_feed_id'
wp option delete 'wdi_sample_feed_post_url'
wp option delete 'wdi_first_user_username'
wp option delete 'wdi_theme_keys'
wp option delete 'wdi_admin_notice'
wp option delete 'wdi_subscribe_done'
wp option delete 'wdi_redirect_to_settings'
wp option delete 'widget_wdi_instagram_widget'
wp option delete 'wdi_current_cache_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdi_cache_success_%'"
wp option delete 'two-front-page-speed'
wp option delete 'twb_images_total_size'
wp option delete 'twb_speed_score'
wp option delete 'tenweb_domain_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_domain_id'"
wp option delete 'tenweb_access_token'
wp option delete 'twb_show_cta'
wp option delete 'twb_hompage_optimized'
wp option delete 'wdi_instagram_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscribe_done'"

# Delete Transients
wp transient delete 'wdi_update_check'
wp transient delete 'twb_optimized_pages'
wp transient delete 'tenweb_subscription_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_overview_visited' OR option_name LIKE '_site_transient_%_overview_visited'"

# Clear Cron Jobs
wp cron event delete 'wdi_schedule_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'two_page_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
