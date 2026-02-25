-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afasm_settings_staff_options', 'AFASM_ACCESS_TOKEN_SECRET_KEY', 'AFASM_REFRESH_TOKEN_SECRET_KEY');

