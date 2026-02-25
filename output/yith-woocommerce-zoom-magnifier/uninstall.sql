-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_wcmg_slider_direction', 'ywzm_hide_thumbnails', 'yith_wcmg_slider_style_colors', 'yith_wcmg_slider_style_colors_hover', 'yith_wcmg_slider_sizes', 'ywzm_lightbox_icon_colors', 'ywzm_lightbox_icon_size', 'yith_wcmg_lightbox_radius', 'ywzm_lightbox_icon_position', 'ywzm_hide_zoom_mobile', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith_wcmg_enableslider', 'yith_wcmg_slider_items', 'yith_wcmg_slider_infinite', 'yith_wcmg_slider_infinite_type', 'ywzm_auto_carousel', 'ywzm_zoom_window_sizes', 'yith_wcmg_zoom_position', 'yith_wcmg_softfocus', 'yith_wcmg_lens_opacity', 'yith_wcmg_loading_label', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');

