-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ysmap_excluded_post_ids', 'ysmap_excluded_taxonomies', 'ysmap_default_sort', 'ysmap_default_order', 'ysmap_per_page', 'ysmap_enable_taxonomy', 'ysmap_cached_url_count', 'ysmap_notice_basic_blocked_by_pro');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ysmap_per_page', '_ysmap_exclude_from_sitemap');
DELETE FROM wp_usermeta WHERE meta_key IN ('ysmap_per_page', '_ysmap_exclude_from_sitemap');
DELETE FROM wp_termmeta WHERE meta_key IN ('ysmap_per_page', '_ysmap_exclude_from_sitemap');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ysmap_per_page', '_ysmap_exclude_from_sitemap');

