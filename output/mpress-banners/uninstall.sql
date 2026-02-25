-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mpress_banner_link', '_mpress_banner_link_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mpress_banner_link', '_mpress_banner_link_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mpress_banner_link', '_mpress_banner_link_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mpress_banner_link', '_mpress_banner_link_action');

