-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_wpur_classification', 'has_wpur_release_date', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_wpur_classification', 'has_wpur_release_date', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_wpur_classification', 'has_wpur_release_date', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_wpur_classification', 'has_wpur_release_date', '_thumbnail_id');

