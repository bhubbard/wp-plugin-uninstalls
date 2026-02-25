-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_sf_width', 'simple_sf_pid', 'simple_sf_style', 'simple_sf_hide', 'simple_sf_delay', 'simple_sf_effect', 'simple_sf_activate_shortcode');

