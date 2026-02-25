-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tolstoycomments_key', 'tolstoycomments_site_id', 'tolstoycomments_export', 'tolstoycomments_export_latest_id', 'tolstoycomments_import', 'tolstoycomments_active', 'tolstoycomments_binding', 'tolstoycomments_index', 'tolstoycomments_custom_settings', 'tolstoycomments');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tolstoycomments_updated', '_tolstoycomments_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tolstoycomments_updated', '_tolstoycomments_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tolstoycomments_updated', '_tolstoycomments_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tolstoycomments_updated', '_tolstoycomments_id');

