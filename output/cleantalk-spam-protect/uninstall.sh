#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spbc_settings'
wp option delete 'ct_plugin_do_activation_redirect'
wp option delete 'spbc_data'
wp option delete 'cleantalk_sessions_clear_log'
wp option delete 'cleantalk_server'
wp option delete 'amp-options'
wp option delete 'active_sitewide_plugins'
wp option delete 'jetpack_active_modules'
wp option delete 'cleantalk_timelabel_reg'
wp option delete 'cleantalk_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_network_settings'"
wp option delete 'cleantalk_sends_reports_till'
wp option delete 'cleantalk_activation_timestamp'
wp option delete 'cleantalk_data'
wp option delete 'cleantalk_network_settings'
wp option delete 'cleantalk_plugin_request_ids'
wp option delete 'cleantalk_connection_reports'
wp option delete 'cleantalk_adjust_to_env'
wp option delete 'comment_previously_approved'
wp option delete 'cleantalk_allowed_moderation'
wp option delete '_fluentform_cleantalk_details'
wp option delete 'gwolle_gb-refuse-spam'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_data'"
wp option delete 'cleantalk_cron_last_start'
wp option delete 'cleantalk_cron'
wp option delete 'cleantalk_network_data'
wp option delete 'w3tc_minify'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'cleantalk_sfw_update_queue'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_network_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"
wp option delete 'cleantalk_cron_pid'

# Clear Cron Jobs
wp cron event delete 'apbct_sfw_update__init'
wp cron event delete 'cleantalk_update_sfw_hook'
wp cron event delete 'cleantalk_send_daily_report_hook'
wp cron event delete 'ct_hourly_event_hook'
wp cron event delete 'ct_send_sfw_log'
wp cron event delete 'cleantalk_get_brief_data_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_marked_as_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_marked_as_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_marked_as_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_marked_as_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ccf_attached_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ccf_attached_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ccf_attached_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ccf_attached_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_real_user_badge_automod_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_real_user_badge_automod_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_real_user_badge_automod_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_real_user_badge_automod_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleantalk_order_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleantalk_order_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleantalk_order_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleantalk_order_request_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_real_user_badge_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_real_user_badge_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_real_user_badge_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_real_user_badge_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_bad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_bad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_bad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_bad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_marked_as_spam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_marked_as_spam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_marked_as_spam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_marked_as_spam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
