-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prth_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_su_title', '_su_description', '_su_og_title', '_su_og_description', '_su_og_image', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_su_title', '_su_description', '_su_og_title', '_su_og_description', '_su_og_image', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_su_title', '_su_description', '_su_og_title', '_su_og_description', '_su_og_image', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_su_title', '_su_description', '_su_og_title', '_su_og_description', '_su_og_image', '_thumbnail_id');

