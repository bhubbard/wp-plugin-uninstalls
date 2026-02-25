-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zx_rwa_option_enabled', 'zx_rwa_option_password', 'zx_rwa_option_logo', 'zx_rwa_access_granted');

