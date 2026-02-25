-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_active_kit', 'rtmega_menu_options', 'rtmega_license_key');
DELETE FROM wp_options WHERE option_name LIKE 'rtmega_menu_settings_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rtmega_menu_settings', 'elementor_library_type', '_elementor_template_type', 'rtmega_notice_ignore_rtmega_pro_plugin_notice', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('rtmega_menu_settings', 'elementor_library_type', '_elementor_template_type', 'rtmega_notice_ignore_rtmega_pro_plugin_notice', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('rtmega_menu_settings', 'elementor_library_type', '_elementor_template_type', 'rtmega_notice_ignore_rtmega_pro_plugin_notice', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rtmega_menu_settings', 'elementor_library_type', '_elementor_template_type', 'rtmega_notice_ignore_rtmega_pro_plugin_notice', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtmega_notice_ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%';

