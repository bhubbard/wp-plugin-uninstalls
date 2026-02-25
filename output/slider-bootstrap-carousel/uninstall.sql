-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_link', 'target_link', 'image_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_link', 'target_link', 'image_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_link', 'target_link', 'image_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_link', 'target_link', 'image_size');

