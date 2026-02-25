-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogwolf_connected', 'blogwolf_api_url', 'blogwolf_api_tokens', 'blogwolf_consent_given', 'blogwolf_session_data', 'blogwolf_login_token', 'blogwolf_posts_list', 'blogwolf_pages_list', 'blogwolf_categories_list', 'blogwolf_activation_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_wp_page_template', '_wp_attachment_image_alt', '_blogwolf_meta_title', '_blogwolf_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_wp_page_template', '_wp_attachment_image_alt', '_blogwolf_meta_title', '_blogwolf_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_wp_page_template', '_wp_attachment_image_alt', '_blogwolf_meta_title', '_blogwolf_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_wp_page_template', '_wp_attachment_image_alt', '_blogwolf_meta_title', '_blogwolf_meta_description');

