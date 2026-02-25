-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webclp_background_type', 'webclp_background_image', 'webclp_gradient_color_1', 'webclp_gradient_color_2', 'webclp_custom_logo');

