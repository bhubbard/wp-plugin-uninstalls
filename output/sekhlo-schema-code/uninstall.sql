-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sekhlo_llms_enabled', 'sekhlo_llms_content', 'sekhlo_sitemap_enabled', 'sekhlo_sitemap_include_posts', 'sekhlo_sitemap_include_pages', 'sekhlo_sitemap_include_categories', 'sekhlo_robots_content', 'sekhlo_htaccess_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sekhlo_seo_keyphrases', 'sekhlo_seo_title', 'sekhlo_seo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('sekhlo_seo_keyphrases', 'sekhlo_seo_title', 'sekhlo_seo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('sekhlo_seo_keyphrases', 'sekhlo_seo_title', 'sekhlo_seo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sekhlo_seo_keyphrases', 'sekhlo_seo_title', 'sekhlo_seo_description');

