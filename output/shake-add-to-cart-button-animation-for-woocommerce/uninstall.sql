-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('satcba_animation_active', 'satcba_animation_speed', 'satcba_animation_delay', 'satcba_box_shadow', 'satcba_background_color', 'satcba_text_color');

