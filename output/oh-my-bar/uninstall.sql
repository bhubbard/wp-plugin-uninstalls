-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rb_enable_bar', 'rb_background_color', 'rb_foreground_color', 'rb_background_opacity', 'rb_bar_shadow', 'rb_bar_rounded', 'rb_bar_placement', 'rb_bar_height', 'rb_show_single_post', 'rb_show_home_page', 'rb_show_single_page', 'rb_show_archive');

