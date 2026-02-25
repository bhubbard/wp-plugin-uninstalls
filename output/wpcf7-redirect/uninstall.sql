-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accesibe_scan_results', 'hide_accessibie_menu', 'show_accessibie_menu', 'accesibe_options', 'wpcf7r-extensions-list', 'wpcf7r-extensions-list-updated', 'wpcf_debug', 'wpcf7_redirect_install', 'wpcf7r_activation_id', 'wpcf_redirect_options', 'active_sitewide_plugins', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'wpcf7_redirect_version', 'wpcf7_redirect_dismiss_banner', 'wpcf7r_redirect_to_dashboard_flag', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_extension-needs-update-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_serial-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_data-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_id-%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7r_activation_expiration-%';
DELETE FROM wp_options WHERE option_name LIKE '%-sku';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('honeypot_names', 'api_debug_url', 'api_debug_result', 'api_debug_params', 'api_errors', 'action_type', 'cf7_form', 'lead_type', 'files', 'cf7_action_id', 'wpcf7_id', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('honeypot_names', 'api_debug_url', 'api_debug_result', 'api_debug_params', 'api_errors', 'action_type', 'cf7_form', 'lead_type', 'files', 'cf7_action_id', 'wpcf7_id', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('honeypot_names', 'api_debug_url', 'api_debug_result', 'api_debug_params', 'api_errors', 'action_type', 'cf7_form', 'lead_type', 'files', 'cf7_action_id', 'wpcf7_id', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('honeypot_names', 'api_debug_url', 'api_debug_result', 'api_debug_params', 'api_errors', 'action_type', 'cf7_form', 'lead_type', 'files', 'cf7_action_id', 'wpcf7_id', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf7_redirect_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'action - %';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'action - %';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'action - %';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'action - %';

