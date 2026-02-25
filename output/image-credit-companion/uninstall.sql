-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eiam_db_version', 'eiam_settings', 'eiam_caps_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eiam_author', '_eiam_source_url', '_eiam_license_name', '_eiam_license_url', '_eiam_attribution_note', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eiam_author', '_eiam_source_url', '_eiam_license_name', '_eiam_license_url', '_eiam_attribution_note', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eiam_author', '_eiam_source_url', '_eiam_license_name', '_eiam_license_url', '_eiam_attribution_note', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eiam_author', '_eiam_source_url', '_eiam_license_name', '_eiam_license_url', '_eiam_attribution_note', '_wp_attachment_image_alt');

