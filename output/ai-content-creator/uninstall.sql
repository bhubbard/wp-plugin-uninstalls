-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicc_settings', 'aicc_dbversion', 'aicc_pxbcversion');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metakeywords', '_yoast_wpseo_metadesc', '_aioseo_keywords', '_aioseo_description', 'rank_math_focus_keyword', 'rank_math_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metakeywords', '_yoast_wpseo_metadesc', '_aioseo_keywords', '_aioseo_description', 'rank_math_focus_keyword', 'rank_math_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metakeywords', '_yoast_wpseo_metadesc', '_aioseo_keywords', '_aioseo_description', 'rank_math_focus_keyword', 'rank_math_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metakeywords', '_yoast_wpseo_metadesc', '_aioseo_keywords', '_aioseo_description', 'rank_math_focus_keyword', 'rank_math_description');

