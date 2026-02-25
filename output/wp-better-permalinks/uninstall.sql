-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbp_notice_hidden', 'wbp_settings', 'wbp_terms', 'wbp_posts', 'wbp_posts_redirects', 'wbp_terms_redirects', 'wp_better_permalinks_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%';

