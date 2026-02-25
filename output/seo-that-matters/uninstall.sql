-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seotm_do_activation_redirect', 'seotm_options', '_plugin_messages');
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ogTitle', 'twitterTitle', 'thumbnail_id', 'seoTitle', 'jsonScript', '_exclude_from_sitemap', '_exclude_taxonomy_from_sitemap');
DELETE FROM wp_usermeta WHERE meta_key IN ('ogTitle', 'twitterTitle', 'thumbnail_id', 'seoTitle', 'jsonScript', '_exclude_from_sitemap', '_exclude_taxonomy_from_sitemap');
DELETE FROM wp_termmeta WHERE meta_key IN ('ogTitle', 'twitterTitle', 'thumbnail_id', 'seoTitle', 'jsonScript', '_exclude_from_sitemap', '_exclude_taxonomy_from_sitemap');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ogTitle', 'twitterTitle', 'thumbnail_id', 'seoTitle', 'jsonScript', '_exclude_from_sitemap', '_exclude_taxonomy_from_sitemap');

