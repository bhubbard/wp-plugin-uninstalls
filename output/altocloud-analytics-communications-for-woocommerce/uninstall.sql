-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ac_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ac_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ac_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ac_tracked');

