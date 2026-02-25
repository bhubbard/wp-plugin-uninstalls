-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bos_searchbox_options', 'bos_searchbox_user_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bos_mb_destination', '_bos_mb_dest_type', '_bos_mb_dest_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bos_mb_destination', '_bos_mb_dest_type', '_bos_mb_dest_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bos_mb_destination', '_bos_mb_dest_type', '_bos_mb_dest_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bos_mb_destination', '_bos_mb_dest_type', '_bos_mb_dest_id');

