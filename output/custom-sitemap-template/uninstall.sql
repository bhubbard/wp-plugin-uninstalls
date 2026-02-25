-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitemap_post_list', 'sitemap_cat_list', 'sitemap_hide_post', 'sitemap_hide_cat', 'cst_settings_arr', 'cst_admin_css_setting', 'cst_sitemap_column_setting');

