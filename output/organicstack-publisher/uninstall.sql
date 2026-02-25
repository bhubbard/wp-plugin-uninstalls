-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('organicstack_publisher_api_key', 'organicstack_publisher_default_author', 'organicstack_publisher_llms_txt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_wp_attachment_image_alt', 'description', 'organicstack_avatar_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_wp_attachment_image_alt', 'description', 'organicstack_avatar_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_wp_attachment_image_alt', 'description', 'organicstack_avatar_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_title', '_wp_attachment_image_alt', 'description', 'organicstack_avatar_id');

