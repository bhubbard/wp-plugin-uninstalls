-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uaf_css_updated_timestamp', 'uaf_api_key', 'uaf_activated_url', 'uaf_hide_key', 'uaf_current_version', 'uaf_install_date', 'uaf_reviews_notice_hide', 'uaf_disbale_editor_font_list', 'uaf_font_data', 'uaf_font_implement', 'uaf_site_url', 'uaf_css_write_error', 'uaf_folder_create_error');

