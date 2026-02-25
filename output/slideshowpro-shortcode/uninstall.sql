-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vcu_option_name', 'vcu_option_width', 'vcu_option_height', 'vcu_option_style', 'vcu_option_content_scale', 'vcu_option_transition', 'vcu_option_preloader', 'vcu_option_auto_playback', 'vcu_option_pan_zoom', 'vcu_option_mouseover_navigation', 'vcu_option_open_gallery', 'vcu_option_auto_start_videos', 'vcu_option_thumbnail_links');

