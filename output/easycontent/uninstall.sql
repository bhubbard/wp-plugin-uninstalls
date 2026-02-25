-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ec-current-db-version', 'ec-is-plugin-connected', 'ec-public-api-key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ec-source-url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ec-source-url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ec-source-url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ec-source-url', '_wp_attachment_image_alt');

