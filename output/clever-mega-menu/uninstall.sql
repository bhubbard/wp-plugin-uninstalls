-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vc_custom_post_css', '_vc_custom_item_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vc_custom_post_css', '_vc_custom_item_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vc_custom_post_css', '_vc_custom_item_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vc_custom_post_css', '_vc_custom_item_css');

