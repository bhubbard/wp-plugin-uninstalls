-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seraph_secretKey');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'seraph_pds_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_seraph_pds_BindGuid', '_product_image_gallery', '_aioseop_title', 'rank_math_title', '_seopress_titles_title', '_yoast_wpseo_title', '_aioseop_description', 'rank_math_description', '_seopress_titles_desc', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_seraph_pds_BindGuid', '_product_image_gallery', '_aioseop_title', 'rank_math_title', '_seopress_titles_title', '_yoast_wpseo_title', '_aioseop_description', 'rank_math_description', '_seopress_titles_desc', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_seraph_pds_BindGuid', '_product_image_gallery', '_aioseop_title', 'rank_math_title', '_seopress_titles_title', '_yoast_wpseo_title', '_aioseop_description', 'rank_math_description', '_seopress_titles_desc', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_seraph_pds_BindGuid', '_product_image_gallery', '_aioseop_title', 'rank_math_title', '_seopress_titles_title', '_yoast_wpseo_title', '_aioseop_description', 'rank_math_description', '_seopress_titles_desc', '_yoast_wpseo_metadesc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_seraph_pds_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_seraph_pds_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_seraph_pds_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seraph_pds_%';

