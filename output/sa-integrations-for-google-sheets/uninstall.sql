-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('saifgs_google_credentials_file', 'saifgs_supported_plugins');

