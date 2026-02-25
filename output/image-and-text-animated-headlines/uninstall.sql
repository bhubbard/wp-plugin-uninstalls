-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imtah_animation1_font', 'imtah_animation1_image_attachment_id', 'imtah_animation1_name', 'imtah_animation1_text_color', 'imtah_animation1_text1', 'imtah_animation1_text2', 'imtah_animation1_text3', 'imtah_animation1_text4', 'imtah_animation1_url', 'imtah_animation2_font', 'imtah_animation2_image_attachment_id1', 'imtah_animation2_image_attachment_id2', 'imtah_animation2_name', 'imtah_animation2_text_color', 'imtah_animation2_text1', 'imtah_animation2_text2', 'imtah_animation2_text3', 'imtah_animation2_text4', 'imtah_animation2_url', 'imtah_animation3_font', 'imtah_animation3_image_attachment_id1', 'imtah_animation3_image_attachment_id2', 'imtah_animation3_name', 'imtah_animation3_text_color', 'imtah_animation3_text1', 'imtah_animation3_text2', 'imtah_animation3_text3', 'imtah_animation3_text4', 'imtah_animation3_url');

