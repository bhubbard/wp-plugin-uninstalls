-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acafs_enable_persistent_uploads', 'acafs_disable_address_book', 'acafs_rename_flamingo', 'acafs_default_flamingo_page', 'acafs_version', 'acafs_display_fields', 'acafs_import_started', 'acafs_import_success', 'acafs_export_file', 'acafs_export_success');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_email', '_field_your-message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_email', '_field_your-message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_email', '_field_your-message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_email', '_field_your-message');

