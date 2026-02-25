-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mgjp_mv_enabled', 'mgjp_mv_deactivation', 'mgjp_mv_version', 'mgjp_mv_ir', 'mgjp_mv_default_permission', 'mgjp_mv_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_mgjp_mv_permission', '_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_mgjp_mv_permission', '_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_mgjp_mv_permission', '_wp_attachment_backup_sizes', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_mgjp_mv_permission', '_wp_attachment_backup_sizes', '_wp_attachment_metadata');

