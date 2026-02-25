-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featuredbox_settings', 'featuredbox_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featuredbox_meta_url', 'featuredbox_meta_image_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('featuredbox_meta_url', 'featuredbox_meta_image_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('featuredbox_meta_url', 'featuredbox_meta_image_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featuredbox_meta_url', 'featuredbox_meta_image_class');

