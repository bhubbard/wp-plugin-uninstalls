-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ash_wp_header_animate', 'ash_wp_header_animation_type', 'ash_wp_header_full_width', 'ash_wp_header_class', 'ash_wp_header_shadow', 'ash_wp_header_sticky_already');

