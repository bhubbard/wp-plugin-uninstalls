-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flowgallery_use_fancybox', 'flowgallery_use_wp_masonry', 'flowgallery_sorting', 'flowgallery_dropshadow', 'flowgallery_square', 'flowgallery_resample', 'flowgallery_padding');

