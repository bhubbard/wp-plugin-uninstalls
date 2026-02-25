-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sliderpro_access', 'sliderpro_load_unminified_scripts', 'sliderpro_add_ons', 'sliderpro_is_custom_css', 'sliderpro_custom_css', 'sliderpro_load_stylesheets', 'sliderpro_load_js_in_all_pages', 'sliderpro_cache_expiry_interval', 'sliderpro_max_sliders_on_page', 'sliderpro_hide_inline_info', 'sliderpro_hide_getting_started_info', 'sliderpro_hide_image_size_warning', 'sliderpro_lightbox_sliders', 'sliderpro_setting_presets', 'sliderpro_hide_custom_css_js_warning', 'sliderpro_custom_js', 'sliderpro_is_custom_js', 'sliderpro_version', 'sliderpro_load_custom_css_js', 'sliderpro_add_ons_cached_data', 'sliderpro_post_names', 'sliderpro_posts_data', 'sliderpro_update_notification_message');
DELETE FROM wp_options WHERE option_name LIKE 'sliderpro_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

