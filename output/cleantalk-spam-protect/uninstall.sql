-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spbc_settings', 'ct_plugin_do_activation_redirect', 'spbc_data', 'cleantalk_sessions_clear_log', 'cleantalk_server', 'amp-options', 'active_sitewide_plugins', 'jetpack_active_modules', 'cleantalk_timelabel_reg', 'cleantalk_settings', 'cleantalk_sends_reports_till', 'cleantalk_activation_timestamp', 'cleantalk_data', 'cleantalk_network_settings', 'cleantalk_plugin_request_ids', 'cleantalk_connection_reports', 'cleantalk_adjust_to_env', 'comment_previously_approved', 'cleantalk_allowed_moderation', '_fluentform_cleantalk_details', 'gwolle_gb-refuse-spam', 'cleantalk_cron_last_start', 'cleantalk_cron', 'cleantalk_network_data', 'w3tc_minify', 'woocommerce_enable_ajax_add_to_cart', 'cleantalk_sfw_update_queue', 'cleantalk_cron_pid');
DELETE FROM wp_options WHERE option_name LIKE '%_network_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_data';
DELETE FROM wp_options WHERE option_name LIKE '%_network_data';
DELETE FROM wp_options WHERE option_name LIKE '%_stats';
DELETE FROM wp_options WHERE option_name LIKE '%_errors';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ct_hash', 'ct_marked_as_approved', 'session_tokens', 'ccf_attached_fields', 'ct_real_user_badge_automod_hash', 'cleantalk_order_request_id', 'ct_real_user_badge_hash', 'ct_bad', 'ct_marked_as_spam', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('ct_hash', 'ct_marked_as_approved', 'session_tokens', 'ccf_attached_fields', 'ct_real_user_badge_automod_hash', 'cleantalk_order_request_id', 'ct_real_user_badge_hash', 'ct_bad', 'ct_marked_as_spam', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('ct_hash', 'ct_marked_as_approved', 'session_tokens', 'ccf_attached_fields', 'ct_real_user_badge_automod_hash', 'cleantalk_order_request_id', 'ct_real_user_badge_hash', 'ct_bad', 'ct_marked_as_spam', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ct_hash', 'ct_marked_as_approved', 'session_tokens', 'ccf_attached_fields', 'ct_real_user_badge_automod_hash', 'cleantalk_order_request_id', 'ct_real_user_badge_hash', 'ct_bad', 'ct_marked_as_spam', 'first_name', 'last_name');

