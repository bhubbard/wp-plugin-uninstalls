-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maxslider_db_version', 'medium_crop', 'large_crop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_maxslider_navigation', '_maxslider_show_arrows', '_maxslider_navigation_fg_color', '_maxslider_navigation_bg_color', '_maxslider_arrows_fg_color', '_maxslider_arrows_bg_color', '_maxslider_slides', '_maxslider_autoslide', '_maxslider_effect', '_maxslider_slide_speed', '_maxslider_height', '_maxslider_height_unit', '_maxslider_navigation_position', '_maxslider_image_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_maxslider_navigation', '_maxslider_show_arrows', '_maxslider_navigation_fg_color', '_maxslider_navigation_bg_color', '_maxslider_arrows_fg_color', '_maxslider_arrows_bg_color', '_maxslider_slides', '_maxslider_autoslide', '_maxslider_effect', '_maxslider_slide_speed', '_maxslider_height', '_maxslider_height_unit', '_maxslider_navigation_position', '_maxslider_image_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_maxslider_navigation', '_maxslider_show_arrows', '_maxslider_navigation_fg_color', '_maxslider_navigation_bg_color', '_maxslider_arrows_fg_color', '_maxslider_arrows_bg_color', '_maxslider_slides', '_maxslider_autoslide', '_maxslider_effect', '_maxslider_slide_speed', '_maxslider_height', '_maxslider_height_unit', '_maxslider_navigation_position', '_maxslider_image_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_maxslider_navigation', '_maxslider_show_arrows', '_maxslider_navigation_fg_color', '_maxslider_navigation_bg_color', '_maxslider_arrows_fg_color', '_maxslider_arrows_bg_color', '_maxslider_slides', '_maxslider_autoslide', '_maxslider_effect', '_maxslider_slide_speed', '_maxslider_height', '_maxslider_height_unit', '_maxslider_navigation_position', '_maxslider_image_size');

