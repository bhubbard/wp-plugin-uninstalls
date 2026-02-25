-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vidfuse_token', 'vidfuse_connected', 'vidfuse_code');

