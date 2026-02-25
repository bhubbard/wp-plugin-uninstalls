-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_cdn', 'image_cdn_notices');
DELETE FROM wp_options WHERE option_name LIKE 'image_cdn_analytics_%';

