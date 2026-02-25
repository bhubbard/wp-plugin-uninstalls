-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('the_preloader_settings', 'the_preloader_first_use', 'wptpreloader_image', 'wptpreloader_bg_color');

