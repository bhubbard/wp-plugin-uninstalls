-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faciro_404_monitor_enabled', 'faciro_rename_on_upload', 'faciro_create_thumbs', 'faciro_enable_optimize', 'faciro_enable_webp', 'faciro_remove_metadata', 'faciro_hide_wp_version', 'faciro_disable_heartbeat', 'faciro_disable_dashicons_front', 'faciro_remove_shortlink', 'faciro_disable_embed', 'faciro_disable_xmlrpc', 'faciro_remove_rsd', 'faciro_remove_fse_global_styles', 'faciro_remove_emojis', 'faciro_remove_header_info', 'faciro_strip_version_assets', 'faciro_hide_login_errors', 'faciro_disable_feeds', 'faciro_hide_admin_bar', 'faciro_prevent_multisite_signup', 'faciro_remove_x_pingback', 'faciro_disable_rankmath_sitemap_cache', 'faciro_sec_uploads_htaccess', 'faciro_sec_wpcontent_htaccess', 'faciro_sec_wpincludes_htaccess', 'faciro_sec_remove_readme', 'faciro_seo_alt_title_images', 'faciro_seo_title_links', 'faciro_seo_noreferrer_external', 'faciro_seo_nofollow_external', 'faciro_seo_external_new_tabs', 'faciro_ia_track_enabled', 'faciro_sitemap_enabled', 'faciro_sitemap_posts', 'faciro_sitemap_pages', 'faciro_sitemap_authors', 'faciro_sitemap_news', 'faciro_fill_image_title', 'faciro_fill_image_description', 'faciro_fill_image_caption', 'rewrite_rules', 'faciro_module_errors', 'faciro_broken_links_posts', 'faciro_broken_links_cache', 'faciro_remove_all_broken_links', 'faciro_last_broken_links_list', 'faciro_pages_without_internal_links_posts', 'faciro_pages_without_external_links_posts');
DELETE FROM wp_options WHERE option_name LIKE 'faciro_sitemap_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_image_alt');

