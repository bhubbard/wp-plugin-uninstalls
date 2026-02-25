-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('grid_accordion_access', 'grid_accordion_load_unminified_scripts', 'grid_accordion_add_ons', 'grid_accordion_is_custom_css', 'grid_accordion_custom_css', 'grid_accordion_load_stylesheets', 'grid_accordion_cache_expiry_interval', 'grid_accordion_hide_inline_info', 'grid_accordion_hide_getting_started_info', 'grid_accordion_hide_custom_css_js_warning', 'grid_accordion_custom_js', 'grid_accordion_is_custom_js', 'grid_accordion_version', 'grid_accordion_load_custom_css_js', 'grid_accordion_hide_image_size_warning', 'grid_accordion_add_ons_cached_data', 'grid_accordion_post_names', 'grid_accordion_posts_data', 'grid_accordion_update_notification_message');
DELETE FROM wp_options WHERE option_name LIKE 'grid_accordion_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

