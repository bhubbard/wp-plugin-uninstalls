-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'bw_tides_desc_%';
DELETE FROM wp_options WHERE option_name LIKE 'bw_tides_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'bw_tides_link_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bw_image_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bw_image_link');

