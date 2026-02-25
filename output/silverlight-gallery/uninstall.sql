-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slgallery_standard_width', 'slgallery_standard_height', 'slgallery_standard_leftarrow', 'slgallery_standard_rightarrow', 'slgallery_standard_pagenumbers', 'slgallery_standard_thumbnails', 'slgallery_standard_preloader', 'slgallery_standard_fill', 'slgallery_standard_bgColor', 'slgallery_standard_bgMode', 'slgallery_standard_version', 'slgallery_alternate_text');

