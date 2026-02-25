-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'prime_slider_third_party_widget', 'elementor_use_mini_cart_template', 'ps_white_label_enabled', 'ps_white_label_hide_license', 'ps_white_label_bdtps_hide', 'ps_white_label_title', 'ps_white_label_icon', 'ps_white_label_icon_id', 'ps_white_label_logo', 'ps_white_label_logo_id', 'prime_slider_license_title_status', 'ps_white_label_access_token', 'ps_localhost_email_data', 'ps_custom_css', 'ps_custom_js', 'ps_custom_css_2', 'ps_custom_js_2', 'ps_excluded_pages', 'prime_slider_license_key', 'prime_slider_license_email', 'prime_slider_activation_time', 'prime_slider_backups', 'prime_slider_installation_complete', 'prime_slider_active_modules', 'prime_slider_elementor_extend', 'bdtps_setup_wizard_completed', 'elementor_viewport_lg', 'elementor_viewport_md', 'prime_slider_backup_checked');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_biggopti_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_elementor_edit_mode');

