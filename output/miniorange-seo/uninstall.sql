-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moseo_welcome_current_step', 'moseo_website_name', 'moseo_website_url', 'moseo_user_email', 'moseo_auto_update', 'moseo_site_type', 'moseo_site_scanned', 'moseo_excluded_sitemap_providers', 'moseo_exclude_noindex', 'moseo_robots_content', 'moseo_plugin_redirects', 'moseo_sitemap_enabled', 'moseo_current_sitemap_cache_key', 'google_code', 'bing_code', 'moseo_breadcrumb_success', 'moseo_breadcrumb_error', 'moseo_findbrokenlinks_status', 'moseo_robots_saved', 'moseo_webmaster_success', 'moseo_seo_summary', 'moseo_seo_results', 'moseo_redirect_success', 'moseo_scan_in_progress', 'moseo_sitemap_saved', 'moseo_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'moseo_excluded_post_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'moseo_sitemap_index_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('moseo_meta_title', 'moseo_meta_description', 'moseo_canonical_url', 'moseo_noindex', 'moseo_keyword', 'moseo_exclude_from_sitemap', '_moseo_score', 'moseo_generated_schema', 'moseo_secondary_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('moseo_meta_title', 'moseo_meta_description', 'moseo_canonical_url', 'moseo_noindex', 'moseo_keyword', 'moseo_exclude_from_sitemap', '_moseo_score', 'moseo_generated_schema', 'moseo_secondary_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('moseo_meta_title', 'moseo_meta_description', 'moseo_canonical_url', 'moseo_noindex', 'moseo_keyword', 'moseo_exclude_from_sitemap', '_moseo_score', 'moseo_generated_schema', 'moseo_secondary_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('moseo_meta_title', 'moseo_meta_description', 'moseo_canonical_url', 'moseo_noindex', 'moseo_keyword', 'moseo_exclude_from_sitemap', '_moseo_score', 'moseo_generated_schema', 'moseo_secondary_keywords');

