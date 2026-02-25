-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('register_text_field', 'register_url_field', 'logo_settings_one', 'logo_settings_url');

