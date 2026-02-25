-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nolgVersion', 'nolg_icon_set_children');
DELETE FROM wp_options WHERE option_name LIKE 'nolg-dismissed-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('type');
DELETE FROM wp_usermeta WHERE meta_key IN ('type');
DELETE FROM wp_termmeta WHERE meta_key IN ('type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type');

