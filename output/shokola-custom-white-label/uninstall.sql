-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_do_activation_redirect', 'shokola_theme_style', 'shokola_logo_name', 'shokola_background_name', 'shokola_background_repeat', 'shokola_background_position', 'shokola_theme_color', 'shokola_h1_color', 'shokola_theme_dark', 'shokola_background_cover', 'shokola_logo_url', 'shokola_favico_name');

