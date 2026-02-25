-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbptl_lat', '_bbptl_lng', '_bbptl_input');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbptl_lat', '_bbptl_lng', '_bbptl_input');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbptl_lat', '_bbptl_lng', '_bbptl_input');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbptl_lat', '_bbptl_lng', '_bbptl_input');

