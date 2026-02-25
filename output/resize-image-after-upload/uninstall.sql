-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jr_resizeupload_version', 'jr_resizeupload_width', 'jr_resizeupload_height', 'jr_resizeupload_quality', 'jr_resizeupload_resize_yesno', 'jr_resizeupload_recompress_yesno', 'jr_resizeupload_convertbmp_yesno', 'jr_resizeupload_convertpng_yesno', 'jr_resizeupload_convertgif_yesno', 'jr_resizeupload_news');

