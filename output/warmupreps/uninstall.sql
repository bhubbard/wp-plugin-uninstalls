-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmp_measurement_units', 'wmp_bar_type', 'wmp_show_on_all_pages', 'wmp_dropdown_page', 'wmp_wrapper_class', 'wmp_display_blog', 'wmp_default_data_imported');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_wmp_blog_category', 'user_display_blog_shortcode', 'wmp_show_blog_shortcode', 'warmp_post_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_wmp_blog_category', 'user_display_blog_shortcode', 'wmp_show_blog_shortcode', 'warmp_post_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_wmp_blog_category', 'user_display_blog_shortcode', 'wmp_show_blog_shortcode', 'warmp_post_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_wmp_blog_category', 'user_display_blog_shortcode', 'wmp_show_blog_shortcode', 'warmp_post_status');

