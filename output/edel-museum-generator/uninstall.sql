-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edel_exhibition_data', '_edel_museum_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edel_exhibition_data', '_edel_museum_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edel_exhibition_data', '_edel_museum_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edel_exhibition_data', '_edel_museum_layout');

