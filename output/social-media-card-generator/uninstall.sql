-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialmcg_title_font_size', 'socialmcg_description_font_size', 'socialmcg_title_y_position', 'socialmcg_description_y_position', 'socialmcg_output_format', 'socialmcg_jpeg_quality', 'socialmcg_template_image_id', 'socialmcg_font_check');

