#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpsp_settings'
wp option delete 'mv_grow_license'
wp option delete 'mv_grow_license_status'
wp option delete 'mv_grow_license_status_date'
wp option delete 'mv_grow_license_tier'
wp option delete 'dpsp_location_sidebar'
wp option delete 'hubbub_temp_site_activated_message'
wp option delete 'mv_grow_version'
wp option delete 'dpsp_admin_notice_announce_save_this'
wp option delete 'dpsp_run_setup_info_nag'
wp option delete 'mcp_version'
wp option delete 'dpsp_top_shared_posts'
wp option delete 'dpsp_version'
wp option delete 'dpsp_first_activation'
wp option delete 'dpsp_email_save_this'
wp option delete 'dpsp_facebook_access_token'
wp option delete 'dpsp_active_tools'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpsp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dpsp_location_%'"
wp option delete 'dpsp_location_follow_widget'
wp option delete 'dpsp_location_content'
wp option delete 'dpsp_location_sticky_bar'

# Delete Transients
wp transient delete 'dpsp_dashboard_count_requires_attention'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dpsp_dashboard_total_%' OR option_name LIKE '_site_transient_dpsp_dashboard_total_%'"
wp transient delete 'dpsp_dashboard_posts_social_information'
wp transient delete 'dpsp_dashboard_posts_requires_attention'
wp transient delete 'hubbub_license_activated_on_this_website'

# Clear Cron Jobs
wp cron event delete 'mv_grow_sync_data'
wp cron event delete 'dpsp_cron_check_serial_key_status'
wp cron event delete 'dpsp_cron_refresh_constant_contact_token'
wp cron event delete 'dpsp_cron_get_posts_networks_share_count'
wp cron event delete 'dpsp_cron_update_serial_key_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_networks_shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_networks_shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_networks_shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_networks_shares'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_short_link_bitly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_short_link_bitly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_short_link_bitly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_short_link_bitly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_share_options_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_share_options_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_share_options_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_share_options_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_share_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_share_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_share_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_share_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_pinterest_hidden_images_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_pinterest_hidden_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_post_single_previous_urls_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_post_single_previous_urls_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_post_single_previous_urls_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_post_single_previous_urls_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_post_single_previous_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_post_single_previous_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_post_single_previous_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_post_single_previous_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_save_this_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_save_this_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_save_this_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_save_this_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pin_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pin_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pin_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pin_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_post_previous_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_post_previous_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_post_previous_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_post_previous_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_networks_shares_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_networks_shares_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_networks_shares_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_networks_shares_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_networks_shares_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_networks_shares_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_networks_shares_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_networks_shares_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_networks_shares_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_networks_shares_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_networks_shares_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_networks_shares_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_cache_shares_twitter_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_cache_shares_twitter_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_cache_shares_twitter_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_cache_shares_twitter_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpsp_cache_shares_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpsp_cache_shares_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpsp_cache_shares_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpsp_cache_shares_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_json'"
