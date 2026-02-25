-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('markai_api_key', 'markai_api_user', 'markai_integration_id', 'markai_author_mode', 'markai_association_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_version', '_elementor_template_type', '_wp_attachment_image_alt', '_wp_page_template', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_version', '_elementor_template_type', '_wp_attachment_image_alt', '_wp_page_template', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_version', '_elementor_template_type', '_wp_attachment_image_alt', '_wp_page_template', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_version', '_elementor_template_type', '_wp_attachment_image_alt', '_wp_page_template', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');

