-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coksima_settings', 'coksima_secret_key', 'coksima_secret_iv');

