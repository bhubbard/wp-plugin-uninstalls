-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_post_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_post_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_post_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_post_order');

