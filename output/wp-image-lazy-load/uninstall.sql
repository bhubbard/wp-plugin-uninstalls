-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpimagelazyload_skipiframe', 'wpimagelazyload_skipparent', 'wpimagelazyload_skipvideo', 'wpimagelazyload_skipallparent', 'wpimagelazyload_loadonposition', 'wpimagelazyload_animation', 'wpimagelazyload_animationduration', 'wpimagelazyload_animationtiming', 'wpimagelazyload_phplazyload', 'wpimagelazyload_themefilesmofidied');

