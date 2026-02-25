-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jorgecastro_settings', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jorgecastro_ai_generated', '_jorgecastro_generated_at', '_jorgecastro_source_id', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_product_image_gallery', 'display_type', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jorgecastro_ai_generated', '_jorgecastro_generated_at', '_jorgecastro_source_id', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_product_image_gallery', 'display_type', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jorgecastro_ai_generated', '_jorgecastro_generated_at', '_jorgecastro_source_id', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_product_image_gallery', 'display_type', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jorgecastro_ai_generated', '_jorgecastro_generated_at', '_jorgecastro_source_id', '_wp_attachment_image_alt', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_yoast_wpseo_focuskeywords', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_product_image_gallery', 'display_type', 'thumbnail_id');

