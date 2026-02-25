-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixcustomify_settings', 'sm_coloration_level', 'sm_color_diversity', 'sm_shuffle_colors', 'sm_color_palette', 'sm_color_palette_variation', 'sm_is_custom_color_palette', 'sm_font_palette', 'sm_font_palette_variation', 'sm_is_custom_font_palette', 'style_manager_user_feedback_provided', 'customify_dbversion', 'sm_dark_mode_advanced', 'sm_dark_mode', 'sm_dark_primary_final', 'sm_dark_secondary_final', 'sm_dark_tertiary_final', 'sm_light_primary_final', 'sm_light_secondary_final', 'sm_light_tertiary_final');
DELETE FROM wp_options WHERE option_name LIKE '%_final';
DELETE FROM wp_options WHERE option_name LIKE '%_timestamp';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

