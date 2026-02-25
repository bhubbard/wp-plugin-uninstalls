-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autocerfa_debug', 'autocerfa_processing', 'car_per_page', 'single_page_slug', 'autocerfa_theme_color_1', 'autocerfa_theme_color_2', 'autocerfa_theme_color_3', 'daily_sync', 'autocerfa_view_style', 'filter_option', 'cropping_image_as_aspect_ration', 'autocerfa_requires_flush', 'ops_token', 'autocerfa_shortcodes_settings', 'autocerfa_single_page', 'autocerfa_car_list_page', 'autocerfa_reload', 'sending_email', 'opcodespace_subscription', 'autocerfa_price', 'autocerfa_plugin_version', 'version', 'autocerfa_log_file_code', 'autocerfa_token', 'autocerfa_no_of_cars', 'lead_updated_date', 'autocerfa_username');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('badge_id', 'hidden', 'images', 'raw_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('badge_id', 'hidden', 'images', 'raw_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('badge_id', 'hidden', 'images', 'raw_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('badge_id', 'hidden', 'images', 'raw_images');

