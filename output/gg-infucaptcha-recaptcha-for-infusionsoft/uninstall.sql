-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_site_key', 'google_site_secret', 'google_lang', 'google_theme', 'custom_error_message');

