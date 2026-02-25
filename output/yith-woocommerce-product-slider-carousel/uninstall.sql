-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ywcps_check_rtl', 'ywcps_n_posts_per_page', 'ywcps_categories', 'ywcps_product_type', 'ywcps_title', 'ywcps_image_per_row', 'ywcps_order_by', 'ywcps_order_type', 'ywcps_check_loop', 'ywcps_pagination_speed', 'ywcps_auto_play', 'ywcps_stop_hover', 'ywcps_show_navigation', 'ywcps_animate_in', 'ywcps_animate_out', 'ywcps_animation_speed', 'ywcps_show_dot_navigation', 'ywcps_show_title', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ywcps_free_slider_id', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ywcps_free_slider_id', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ywcps_free_slider_id', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ywcps_free_slider_id', 'dismissed_wp_pointers', 'blog-cats');

