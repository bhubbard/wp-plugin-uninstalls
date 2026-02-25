-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_key', 'cc_blog_ID', 'cc_author', 'cc_blog_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt');

