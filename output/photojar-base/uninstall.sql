-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pj_cache_path', 'pj_cache_url', 'pj_insert_image', 'pj_linkto', 'pj_linkto_single', 'pj_viewer', 'pj_gallery_columns', 'pj_gallery_size', 'pj_jpeg_quality', 'pj_custom_width', 'pj_custom_height', 'pj_custom_crop', 'pj_resize_full', 'pj_full_width', 'pj_full_height', 'pj_custom_class', 'pj_custom_rel');

