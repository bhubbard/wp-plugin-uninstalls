-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csanim_enabled', 'csanim_mobile', 'csanim_cursor_style', 'csanim_custom_cursor', 'csanim_cursor_size', 'csanim_type', 'csanim_trail_length', 'csanim_trail_size', 'csanim_trail_color', 'csanim_speed');

