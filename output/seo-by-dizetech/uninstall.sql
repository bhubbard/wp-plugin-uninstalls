-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_by_dt_last_site_report');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_seo_by_dt_check_report', '_yoast_wpseo_title', '_aioseo_title', '_yoast_wpseo_metadesc', '_aioseo_description', '_wp_attachment_image_alt', '_seo_by_dt_post_keyword', '_seo_by_dt_canonical_url', '_seo_by_dt_og_title', '_seo_by_dt_og_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_seo_by_dt_check_report', '_yoast_wpseo_title', '_aioseo_title', '_yoast_wpseo_metadesc', '_aioseo_description', '_wp_attachment_image_alt', '_seo_by_dt_post_keyword', '_seo_by_dt_canonical_url', '_seo_by_dt_og_title', '_seo_by_dt_og_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_seo_by_dt_check_report', '_yoast_wpseo_title', '_aioseo_title', '_yoast_wpseo_metadesc', '_aioseo_description', '_wp_attachment_image_alt', '_seo_by_dt_post_keyword', '_seo_by_dt_canonical_url', '_seo_by_dt_og_title', '_seo_by_dt_og_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_seo_by_dt_check_report', '_yoast_wpseo_title', '_aioseo_title', '_yoast_wpseo_metadesc', '_aioseo_description', '_wp_attachment_image_alt', '_seo_by_dt_post_keyword', '_seo_by_dt_canonical_url', '_seo_by_dt_og_title', '_seo_by_dt_og_desc');

