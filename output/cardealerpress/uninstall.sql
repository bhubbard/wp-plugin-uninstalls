-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdp_admin_options', 'cdp_db_name_update', 'cdp_theme_options', 'cdp_shortcode_options', 'wporg_options', 'rewrite_rules', 'cardealerpress_settings', 'cdp_transfer_options', 'cardealerpress_extender_settings', 'cdp_requirements_checked', 'has_rewrite_for_plugin_name_new_taxonomies', 'cdp_manual_update_handler_processing', 'cdp_custom_import_update', 'dt_geo_data', 'cdp_dealer_names');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE 'cdp_manual_update_handler_processing_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdp_company_check_update_handler_processing_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdp_company_processing_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdp_check_for_company_update_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdp_auto_update_handler_processing_%';

