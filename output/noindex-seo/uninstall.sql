-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noindex_seo_config_granular', 'noindex_seo_config_method', 'noindex_seo_config_version', 'noindex_seo_config_seoplugins', 'noindex_seo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_noindex_seo_override', '_noindex_seo_noindex', '_noindex_seo_nofollow', '_noindex_seo_noarchive', '_noindex_seo_nosnippet', '_noindex_seo_noimageindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('_noindex_seo_override', '_noindex_seo_noindex', '_noindex_seo_nofollow', '_noindex_seo_noarchive', '_noindex_seo_nosnippet', '_noindex_seo_noimageindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('_noindex_seo_override', '_noindex_seo_noindex', '_noindex_seo_nofollow', '_noindex_seo_noarchive', '_noindex_seo_nosnippet', '_noindex_seo_noimageindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_noindex_seo_override', '_noindex_seo_noindex', '_noindex_seo_nofollow', '_noindex_seo_noarchive', '_noindex_seo_nosnippet', '_noindex_seo_noimageindex');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_noindex_seo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_noindex_seo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_noindex_seo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_noindex_seo_%';

