-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('header_margin', 'header_padding', 'wp_body_open_enabled', 'pro_version_enabled', 'simple_banner_pro_license_key', 'permissions_array', 'simple_banner_debug_mode', 'pro_version_activation_code', 'simple_banner_clear_cache');
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text%';
DELETE FROM wp_options WHERE option_name LIKE 'hide_simple_banner%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_color%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text_color%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_link_color%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_close_color%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_font_size%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_z_index%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_position%';
DELETE FROM wp_options WHERE option_name LIKE 'close_button_enabled%';
DELETE FROM wp_options WHERE option_name LIKE 'close_button_expiration%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_prepend_element%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_custom_css%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_text_custom_css%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_button_css%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_scrolling_custom_css%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_insert_inside_element%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_start_after_date%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_remove_after_date%';
DELETE FROM wp_options WHERE option_name LIKE 'disabled_on_posts%';
DELETE FROM wp_options WHERE option_name LIKE 'simple_banner_disabled_page_paths%';
DELETE FROM wp_options WHERE option_name LIKE 'disabled_pages_array%';
DELETE FROM wp_options WHERE option_name LIKE 'site_custom_css%';
DELETE FROM wp_options WHERE option_name LIKE 'keep_site_custom_css%';
DELETE FROM wp_options WHERE option_name LIKE 'site_custom_js%';
DELETE FROM wp_options WHERE option_name LIKE 'keep_site_custom_js%';
DELETE FROM wp_options WHERE option_name LIKE 'header_margin%';
DELETE FROM wp_options WHERE option_name LIKE 'header_padding%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_body_open_enabled%';

