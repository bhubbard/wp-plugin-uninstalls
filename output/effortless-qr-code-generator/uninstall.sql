-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('effortless_qrcode_version', 'active_sitewide_plugins', 'effortless_qrcode_settings', 'effortless_qrcode_cache');

