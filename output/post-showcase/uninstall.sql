-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pshowcase_settings', 'pshowcase_version', 'pshowcase_flash_notices');

