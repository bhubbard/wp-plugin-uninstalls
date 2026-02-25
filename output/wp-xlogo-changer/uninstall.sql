-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_xlogo_image', 'wp_xlogo_width', 'wp_xlogo_height', 'wp_xlogo_bsize');

