-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgbAPIKey', 'vgbUtils', 'fs_lite_accounts');

