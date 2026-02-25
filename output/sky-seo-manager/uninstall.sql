-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skyseomanager_options', 'skyseomanager_license_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title', '_genesis_title', '_tsf_title_no_blogname', '_wds_title', '_premium_seo_pack_title', '_su_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_tsf_description_no_blogname', '_wds_metadesc', '_premium_seo_pack_description', '_su_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title', '_genesis_title', '_tsf_title_no_blogname', '_wds_title', '_premium_seo_pack_title', '_su_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_tsf_description_no_blogname', '_wds_metadesc', '_premium_seo_pack_description', '_su_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title', '_genesis_title', '_tsf_title_no_blogname', '_wds_title', '_premium_seo_pack_title', '_su_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_tsf_description_no_blogname', '_wds_metadesc', '_premium_seo_pack_description', '_su_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title', '_seopress_titles_title', '_genesis_title', '_tsf_title_no_blogname', '_wds_title', '_premium_seo_pack_title', '_su_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_tsf_description_no_blogname', '_wds_metadesc', '_premium_seo_pack_description', '_su_description');

