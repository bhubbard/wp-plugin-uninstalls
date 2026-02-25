-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentstudio_redirect', 'contentstudio_token', 'contentstudio_save_media_in_wp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('contentstudio_wpseo_title', 'contentstudio_wpseo_description', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_aioseop_title', '_aioseop_description', '_wp_old_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('contentstudio_wpseo_title', 'contentstudio_wpseo_description', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_aioseop_title', '_aioseop_description', '_wp_old_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('contentstudio_wpseo_title', 'contentstudio_wpseo_description', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_aioseop_title', '_aioseop_description', '_wp_old_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('contentstudio_wpseo_title', 'contentstudio_wpseo_description', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_aioseop_title', '_aioseop_description', '_wp_old_slug');

