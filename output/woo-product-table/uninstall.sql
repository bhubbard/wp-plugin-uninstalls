-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt_pro_license_key', 'b2bking_all_products_visible_all_users_setting', 'b2bking_disable_visibility_setting', 'qv_button_label', 'cawqv_general_section', 'ywraq_show_btn_link_text', 'ywraq_show_btn_link', 'ywraq_add_to_quote_button_color', 'wpt_configure_options', 'codersaiful_browse_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_unit';
DELETE FROM wp_options WHERE option_name LIKE '%_ajax_visibility';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('conditions', 'column_array', 'enabled_column_array', 'column_settings', 'basics', 'column_array_mobile', 'enabled_column_array_mobile', 'column_settings_mobile', 'column_array_tablet', 'enabled_column_array_tablet', 'column_settings_tablet', 'mobile', 'pagination', 'responsive', 'search_n_filter', 'table_style', 'config');
DELETE FROM wp_usermeta WHERE meta_key IN ('conditions', 'column_array', 'enabled_column_array', 'column_settings', 'basics', 'column_array_mobile', 'enabled_column_array_mobile', 'column_settings_mobile', 'column_array_tablet', 'enabled_column_array_tablet', 'column_settings_tablet', 'mobile', 'pagination', 'responsive', 'search_n_filter', 'table_style', 'config');
DELETE FROM wp_termmeta WHERE meta_key IN ('conditions', 'column_array', 'enabled_column_array', 'column_settings', 'basics', 'column_array_mobile', 'enabled_column_array_mobile', 'column_settings_mobile', 'column_array_tablet', 'enabled_column_array_tablet', 'column_settings_tablet', 'mobile', 'pagination', 'responsive', 'search_n_filter', 'table_style', 'config');
DELETE FROM wp_commentmeta WHERE meta_key IN ('conditions', 'column_array', 'enabled_column_array', 'column_settings', 'basics', 'column_array_mobile', 'enabled_column_array_mobile', 'column_settings_mobile', 'column_array_tablet', 'enabled_column_array_tablet', 'column_settings_tablet', 'mobile', 'pagination', 'responsive', 'search_n_filter', 'table_style', 'config');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'enabled_column_array%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'enabled_column_array%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'enabled_column_array%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'enabled_column_array%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'column_array%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'column_array%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'column_array%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'column_array%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'column_settings%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'column_settings%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'column_settings%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'column_settings%';

