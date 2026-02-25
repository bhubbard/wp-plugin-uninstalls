-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contentbeast_auto_pub_opts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_contentbeast_canonical_url', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_contentbeast_canonical_url', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_contentbeast_canonical_url', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_contentbeast_canonical_url', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc');

