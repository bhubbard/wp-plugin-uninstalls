-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_preloader_image', 'ss_preloader_color', 'ss_preloader_opacity');

