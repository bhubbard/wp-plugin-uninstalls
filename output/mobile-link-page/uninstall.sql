-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mobile_links_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mobile_links_meta_key', '_mobile_links_custom_photo_url', '_mobile_links_custom_photo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mobile_links_meta_key', '_mobile_links_custom_photo_url', '_mobile_links_custom_photo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mobile_links_meta_key', '_mobile_links_custom_photo_url', '_mobile_links_custom_photo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mobile_links_meta_key', '_mobile_links_custom_photo_url', '_mobile_links_custom_photo_id');

