-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_sitemap_options', 'vo3da_ping_results', 'vo3da_robots_options', 'attachment_sitemap_items', 'home_sitemap_items', 'wpseo_taxonomy_meta', 'seo_ultimate_module_meta');
DELETE FROM wp_options WHERE option_name LIKE '%_sitemap_items';
DELETE FROM wp_options WHERE option_name LIKE '%_excludeurl';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prioriti', 'frequencies', 'excludeurl', '_yoast_wpseo_meta-robots-noindex', '_su_meta_robots_noindex', 'term_last_mod');
DELETE FROM wp_usermeta WHERE meta_key IN ('prioriti', 'frequencies', 'excludeurl', '_yoast_wpseo_meta-robots-noindex', '_su_meta_robots_noindex', 'term_last_mod');
DELETE FROM wp_termmeta WHERE meta_key IN ('prioriti', 'frequencies', 'excludeurl', '_yoast_wpseo_meta-robots-noindex', '_su_meta_robots_noindex', 'term_last_mod');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prioriti', 'frequencies', 'excludeurl', '_yoast_wpseo_meta-robots-noindex', '_su_meta_robots_noindex', 'term_last_mod');

