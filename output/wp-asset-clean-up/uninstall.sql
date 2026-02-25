-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_shop_page_id', 'siteground_optimizer_combine_css', 'wp_rocket_settings', 'classic-editor-replace', 'classic-editor-allow-users', 'sccss_settings', 'autoptimize_css', 'WpFastestCache', 'litespeed-cache-conf', 'breeze_basic_settings', 'breeze_advanced_settings', 'autoptimize_js', 'wpassetcleanup_global_data', 'perfmatters_extras');
DELETE FROM wp_options WHERE option_name LIKE '%_front_page_no_load';
DELETE FROM wp_options WHERE option_name LIKE '%_front_page_load_exceptions';
DELETE FROM wp_options WHERE option_name LIKE '%_global_unload';
DELETE FROM wp_options WHERE option_name LIKE '%_bulk_unload';
DELETE FROM wp_options WHERE option_name LIKE '%_post_type_load_exceptions';
DELETE FROM wp_options WHERE option_name LIKE '%_front_page_data';
DELETE FROM wp_options WHERE option_name LIKE '%_critical_css_config';
DELETE FROM wp_options WHERE option_name LIKE '%_first_usage';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_status';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_extras_load_exceptions';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_global_data';
DELETE FROM wp_options WHERE option_name LIKE '%_import_done';
DELETE FROM wp_options WHERE option_name LIKE '%_active_plugins_icons';
DELETE FROM wp_options WHERE option_name LIKE '%_frontend_assets_manager_just_updated';
DELETE FROM wp_options WHERE option_name LIKE '%_all_rules_cleared';
DELETE FROM wp_options WHERE option_name LIKE '%_redirect_after_activation';
DELETE FROM wp_options WHERE option_name LIKE '%_settings_updated';
DELETE FROM wp_options WHERE option_name LIKE '%_reset_done';
DELETE FROM wp_options WHERE option_name LIKE '%_assets_info';
DELETE FROM wp_options WHERE option_name LIKE '%_last_clear_cache';
DELETE FROM wp_options WHERE option_name LIKE '%_clear_assets_cache';
DELETE FROM wp_options WHERE option_name LIKE '%_clear_assets_cache_via_link';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_just_cleared_via_link_dash_area';
DELETE FROM wp_options WHERE option_name LIKE '%_preloads_just_removed';
DELETE FROM wp_options WHERE option_name LIKE '%_total_unloaded_assets_all';
DELETE FROM wp_options WHERE option_name LIKE '%_total_unloaded_assets_per_page';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_load_exceptions';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_load_exceptions';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_load_exceptions';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_load_exceptions';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_no_load';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_no_load';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_no_load';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_no_load';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_page_options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_page_options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_page_options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_page_options';

