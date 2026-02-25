-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'cf7_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7_total');

