-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pla_animation_choose', 'pla_animation_upload', 'pla_animation_bg_color');

