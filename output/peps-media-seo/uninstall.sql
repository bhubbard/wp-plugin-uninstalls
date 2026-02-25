-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pm-seo-header-code', 'pm-seo-body-open-code', 'pm-seo-footer-code', 'pm-seo-og-site-name', 'pm-seo-disable-attachment-pages', 'pm-seo-disable-author-pages', 'pm-seo-delete-data-on-uninstall', 'pm-seo-disable-sitemap', 'pm-seo-disable-author-sitemap', 'pm-seo-disable-user-sitemap', 'pm-seo-disable-tags-sitemap', 'pm-seo-disable-category-sitemap', 'pm-seo-disable-testimonial-sitemap', 'pm-seo-include-translated-sitemaps', 'wp_attachment_pages_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pm_seo_noindex', 'pm_seo_title', 'pm_seo_description', 'pm_seo_image_id', 'pm_seo_sitemap_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('pm_seo_noindex', 'pm_seo_title', 'pm_seo_description', 'pm_seo_image_id', 'pm_seo_sitemap_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('pm_seo_noindex', 'pm_seo_title', 'pm_seo_description', 'pm_seo_image_id', 'pm_seo_sitemap_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pm_seo_noindex', 'pm_seo_title', 'pm_seo_description', 'pm_seo_image_id', 'pm_seo_sitemap_exclude');

