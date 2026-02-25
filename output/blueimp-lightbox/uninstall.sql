-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blueimp_lightbox_settings_media_types');
DELETE FROM wp_options WHERE option_name LIKE '%_auto_add';
DELETE FROM wp_options WHERE option_name LIKE '%_media_types';

