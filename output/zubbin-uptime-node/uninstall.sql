-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zubbin_un_settings', 'zubbin_un_flash_notice');

