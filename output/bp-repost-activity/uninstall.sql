-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bprpa_enable_setting');
DELETE FROM wp_options WHERE option_name LIKE 'bprpa_activity_%';
DELETE FROM wp_options WHERE option_name LIKE 'bprpa_media_activity_%';

