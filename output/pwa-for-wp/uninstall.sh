#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravitecnet_option_app_key'
wp option delete 'pwaforwp_settings'
wp option delete 'OneSignalWPSetting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wisdom_deactivation_details_%'"
wp option delete 'wisdom_allow_tracking'
wp option delete 'wisdom_last_track_time'
wp option delete 'pwaforwp_wisdom_block_notice'
wp option delete 'wisdom_collect_email'
wp option delete 'wisdom_admin_emails'
wp option delete 'pwaforwp_review_never'
wp option delete 'pwaforwp_review_notice_bar_close_date'
wp option delete 'autoptimize_cdn_url'
wp option delete 'wph_settings'
wp option delete 'pwaforwp_visibility_settings'
wp option delete 'pwawppro_license_info'
wp option delete 'pwaforwp_update_pre_cache_list'
wp option delete 'pwaforwp_activation_date'
wp option delete 'pwa_token_list'
wp option delete 'pwaforwp_pre_cache_post_ids'
wp option delete 'pwaforwp_admin_notice_transient'
wp option delete '_transient_pwaforwp_restapi_check'
wp option delete 'pwa_uninstall_data'

# Delete Transients
wp transient delete 'pwaforwp_pre_cache_post_ids'
wp transient delete 'pwaforwp_restapi_check'
wp transient delete 'pwaforwp_file_change_transient'
wp transient delete 'pwaforwp_addon_zto7'
wp transient delete 'pwaforwp_addons_expired'
wp transient delete 'pwaforwp_addons_set_transient'
wp transient delete 'plugin_slugs'
wp transient delete 'pwaforwp_admin_notice_transient'

# Clear Cron Jobs
wp cron event delete 'put_do_weekly_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
