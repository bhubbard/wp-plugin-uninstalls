-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmse_enable_setting', 'gmse_flakes_number', 'gmse_select_weather', 'gmse_make', 'gmse_flake_icon_type', 'gmse_flake_image_type', 'gmse_minimum_size', 'gmse_maximum_size', 'gmse_minimum_falling', 'gmse_maximum_falling', 'gmse_flakes_shadow', 'gmse_icon_color');

