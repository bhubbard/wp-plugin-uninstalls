-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('celia_meta_mappings', 'celia_admin_notices', 'celia_verification_code', 'celia_api_pin');

