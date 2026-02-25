-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('go_night_pro_images', 'go_night_pro_advanced', 'go_night_pro_button', 'go_night_pro_colors', 'go_night_pro_customcss', 'go_night_pro_general', 'go_night_pro_typography');

