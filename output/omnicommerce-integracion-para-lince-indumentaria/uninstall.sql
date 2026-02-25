-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slw_default_location');
DELETE FROM wp_usermeta WHERE meta_key IN ('slw_default_location');
DELETE FROM wp_termmeta WHERE meta_key IN ('slw_default_location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slw_default_location');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_stock_at_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stock_at_%';

