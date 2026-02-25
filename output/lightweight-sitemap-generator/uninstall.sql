-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwsgp_options_v06', 'lwsgp_last_generated_gmt', 'active_sitewide_plugins', 'lwsgp_preview_nonce', 'lwsgp_flash_scan', 'lwsgp_flash_preview', 'lwsgp_flash_generic');
DELETE FROM wp_options WHERE option_name LIKE '%:auto_off_note';

