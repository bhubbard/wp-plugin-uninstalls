-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better-image-credits-options');
DELETE FROM wp_options WHERE option_name LIKE 'better-image-credits_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_license', '_wp_attachment_license_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_license', '_wp_attachment_license_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_license', '_wp_attachment_license_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_source_name', '_wp_attachment_source_url', '_wp_attachment_license', '_wp_attachment_license_url');

