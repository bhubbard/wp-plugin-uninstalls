-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpc_onboarding_done', 'tpc_maybe_run_onboarding', 'tpc_obd_new_user', 'theme_switched', 'templates_patterns_collection_fse_templates', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_edit_address_page_id', 'woocommerce_view_order_page_id', 'woocommerce_change_password_page_id', 'woocommerce_logout_page_id', 'themeisle_ob_plugins_installed', 'themeisle_blocks_settings_redirect', 'masteriyo_first_time_activation_flag', 'es_is_demo_executed', 'sidebars_widgets', 'tiob_inherited_autoactivate', 'active_sitewide_plugins', 'neve_notice_dismissed', 'nv_pro_white_label_status', 'ti_white_label_inputs', 'templates_patterns_collection_install', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', '_wc_activation_redirect', 'wpforms_activation_redirect', 'ti_tpc_should_flush_permalinks', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%-widget';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ti_tpc_template_id', 'nv_mm_options', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css', '_fl_builder_enabled', '_ti_tpc_template_sync', '_ti_tpc_site_slug', '_ti_tpc_screenshot_url', '_ti_tpc_published', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ti_tpc_template_id', 'nv_mm_options', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css', '_fl_builder_enabled', '_ti_tpc_template_sync', '_ti_tpc_site_slug', '_ti_tpc_screenshot_url', '_ti_tpc_published', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ti_tpc_template_id', 'nv_mm_options', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css', '_fl_builder_enabled', '_ti_tpc_template_sync', '_ti_tpc_site_slug', '_ti_tpc_screenshot_url', '_ti_tpc_published', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ti_tpc_template_id', 'nv_mm_options', '_menu_item_menu_item_parent', '_thumbnail_id', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css', '_fl_builder_enabled', '_ti_tpc_template_sync', '_ti_tpc_site_slug', '_ti_tpc_screenshot_url', '_ti_tpc_published', 'themeisle_sdk_dismissed_notice_black_friday');

