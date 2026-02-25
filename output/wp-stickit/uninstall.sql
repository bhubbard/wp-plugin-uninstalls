-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_stickit_class_name', 'wp_stickit_top', 'wp_stickit_zindex', 'wp_stickit_screen_min_width', 'wp_stickit_screen_max_width');

