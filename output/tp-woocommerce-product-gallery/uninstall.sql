-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpwpg_thumbnail', 'tpwpg_dots', 'tpwpg_speed', 'tpwpg_accessibility', 'tpwpg_autoplay', 'tpwpg_autoplaySpeed', 'tpwpg_arrows', 'tpwpg_centerMode', 'tpwpg_centerPadding', 'tpwpg_infinite', 'tpwpg_draggable', 'tpwpg_fade', 'tpwpg_focusOnSelect', 'tpwpg_adaptiveHeight', 'tpwpg_arrow_background', 'tpwpg_arrow_color', 'tpwpg_icons_background', 'tpwpg_icons_color', 'tpwpg_video_type', 'tpwpg_video_play_background', 'tpwpg_active_zoom', 'tpwpg_zoom_type', 'tpwpg_active_lightbox', 'tpwpg_lightbox_speed', 'tpwpg_lightbox_hideBarsDelay', 'tpwpg_lightbox_closable', 'tpwpg_lightbox_loop', 'tpwpg_lightbox_product_name', 'tpwpg_lightbox_loadYoutubeThumbnail', 'tpwpg_verticalSwiping', 'tpwpg_vertical', 'tpwpg_lightbox_mode', 'tpwpg_lightbox_mousewheel', 'tpwpg_lkey', 'tpwpg_lkey_state', 'tpwpg_lkey_expiresAt', 'tpwpg_disable_thumbnail_less_than');

