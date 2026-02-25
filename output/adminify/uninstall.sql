-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_jltadminbar_settings', '_wpadminify_custom_js_css', '_wpadminify', 'wp_adminify_multisite_exclude', 'wpadminify_notice_discount_code', '_wpadminify_plugin_update_info_notice', '_wpadminify_plugin_conflict', 'jltwp_adminify_what_we_collect', 'jltwp_adminify_sheet_promo_data', 'jltwp_adminify_sheet_promo_data_hash', 'dashboard_widgets', 'sidebar_widgets', 'aam_access_settings', 'active_sitewide_plugins', 'jltwp_adminify_login', '_wpadminify_redirect_urls', '_wpadminify_backup', 'google_pagepseed_api_key', 'jltwp_adminify_setup_wizard_ran', 'wp_adminify_addon__is_eligible_for_coupon', 'wp_adminify_addon__coupon_is_deleted', 'wp_adminify_addon__coupon', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'wp_adminify_version', 'jltwp_adminify_activation_time', 'jltwp_adminify_customizer_flush_url', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes', '_adminify_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wp_adminify_rollback_versions_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version_data';
DELETE FROM wp_options WHERE option_name LIKE 'jltwp_adminify-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('color_mode', '_wpadminify_preferences', 'billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'adminify_last_login_on', 'jltwp_adminify_dismissed_welcome_panel', 'ct_builder_shortcodes', '_wp_adminify_fodler_color', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('color_mode', '_wpadminify_preferences', 'billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'adminify_last_login_on', 'jltwp_adminify_dismissed_welcome_panel', 'ct_builder_shortcodes', '_wp_adminify_fodler_color', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('color_mode', '_wpadminify_preferences', 'billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'adminify_last_login_on', 'jltwp_adminify_dismissed_welcome_panel', 'ct_builder_shortcodes', '_wp_adminify_fodler_color', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('color_mode', '_wpadminify_preferences', 'billing_phone', 'billing_company', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'adminify_last_login_on', 'jltwp_adminify_dismissed_welcome_panel', 'ct_builder_shortcodes', '_wp_adminify_fodler_color', '_elementor_template_type');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_adminify_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_adminify_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_adminify_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_adminify_errors_%';

