-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_snapshot_theme', '_preview_url_query_vars', 'snapshot_error_on_publish');
DELETE FROM wp_usermeta WHERE meta_key IN ('_snapshot_theme', '_preview_url_query_vars', 'snapshot_error_on_publish');
DELETE FROM wp_termmeta WHERE meta_key IN ('_snapshot_theme', '_preview_url_query_vars', 'snapshot_error_on_publish');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_snapshot_theme', '_preview_url_query_vars', 'snapshot_error_on_publish');

