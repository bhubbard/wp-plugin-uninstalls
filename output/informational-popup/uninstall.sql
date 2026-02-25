-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pop_text_color', 'pop_border_color', 'pop_animate_left', 'pop_bg_color', 'pop_border_width', 'pop_post_text_color', 'pop_animation_type', 'my-theme-options');

