-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_psfw_stores', '_psfw_excluded_fields', '_psfw_allowed_statuses', '_psfw_handle_deletion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_global_unique_id', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_global_unique_id', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_global_unique_id', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_global_unique_id', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%data';

