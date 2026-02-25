-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_btv_add_to');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_btv_view_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_btv_view_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_btv_view_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_btv_view_count');

