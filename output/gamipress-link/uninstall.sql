-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gamipress_link_url', '_gamipress_link_id', '_gamipress_link_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gamipress_link_url', '_gamipress_link_id', '_gamipress_link_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gamipress_link_url', '_gamipress_link_id', '_gamipress_link_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gamipress_link_url', '_gamipress_link_id', '_gamipress_link_class');

