-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accordion_slider_access', 'accordion_slider_load_unminified_scripts', 'accordion_slider_add_ons', 'accordion_slider_is_custom_css', 'accordion_slider_custom_css', 'accordion_slider_load_stylesheets', 'accordion_slider_cache_expiry_interval', 'accordion_slider_hide_inline_info', 'accordion_slider_hide_getting_started_info', 'accordion_slider_hide_image_size_warning', 'accordion_slider_hide_custom_css_js_warning', 'accordion_slider_custom_js', 'accordion_slider_is_custom_js', 'accordion_slider_version', 'accordion_slider_load_custom_css_js', 'accordion_slider_add_ons_cached_data', 'accordion_slider_post_names', 'accordion_slider_posts_data', 'accordion_slider_update_notification_message');
DELETE FROM wp_options WHERE option_name LIKE 'accordion_slider_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

