-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ims-fme-ssc-admin-notice-disallowed-file-error', 'ims-fme-ssc-admin-notice-plug-error', 'ims-fme-ssc-admin-notice-zip-error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_custom_attachment', 'wp_custom_attachment_height', 'wp_custom_attachment_width', '_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_custom_attachment', 'wp_custom_attachment_height', 'wp_custom_attachment_width', '_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_custom_attachment', 'wp_custom_attachment_height', 'wp_custom_attachment_width', '_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_custom_attachment', 'wp_custom_attachment_height', 'wp_custom_attachment_width', '_title');

