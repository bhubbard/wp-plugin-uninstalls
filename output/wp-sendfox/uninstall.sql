-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gb_sf4wp_options', 'gb_sf4wp_api_lists');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sf4wp_send');
DELETE FROM wp_usermeta WHERE meta_key IN ('sf4wp_send');
DELETE FROM wp_termmeta WHERE meta_key IN ('sf4wp_send');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sf4wp_send');

