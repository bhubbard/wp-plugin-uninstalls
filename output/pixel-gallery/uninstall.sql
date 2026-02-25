-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdt_biggopti_dismissals', 'pg_white_label_enabled', 'pg_white_label_hide_license', 'pg_white_label_bdtpg_hide', 'pg_white_label_title', 'pg_white_label_icon', 'pg_white_label_icon_id', 'pg_white_label_logo', 'pg_white_label_logo_id', 'pixel_gallery_license_title_status', 'pg_white_label_access_token', 'pg_localhost_email_data', 'pg_custom_css', 'pg_custom_js', 'pg_custom_css_2', 'pg_custom_js_2', 'pg_excluded_pages', 'pixel_gallery_license_email', 'pixel_gallery_license_key', 'pixel_gallery_active_modules', 'pixel_gallery_elementor_extend', 'pixel_gallery_third_party_widget', 'bdtpg_setup_wizard_completed', 'pixel-gallery-minified-asset-manager-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');

