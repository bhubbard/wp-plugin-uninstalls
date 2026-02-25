-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_demopress_generated_content', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_demopress_generated_content', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_demopress_generated_content', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_demopress_generated_content', '_wp_attachment_image_alt');

