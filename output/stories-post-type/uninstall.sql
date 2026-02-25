-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stories_pt_prefill_taxonomies', 'stories_pt_category_order', 'stories_pt_sitemap_priority', 'stories_pt_sitemap_frequency');

