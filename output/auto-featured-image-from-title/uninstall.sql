-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_image_pages', 'auto_image_posts', 'auto_image_content_length', 'auto_image_remove_linebreaks', 'auto_image_default_disable', 'auto_image_write_text', 'auto_image_text', 'auto_image_width', 'auto_image_height', 'auto_image_bg_image', 'auto_image_bg_color', 'auto_image_fontface', 'auto_image_fontsize', 'auto_image_text_color', 'auto_image_shadow', 'auto_image_shadow_color', 'auto_image_set_first');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('afift-disable', '_wp_attachment_image_alt', 'afift-disable-set-first', 'afift_lite2pro_ignore_notice4');
DELETE FROM wp_usermeta WHERE meta_key IN ('afift-disable', '_wp_attachment_image_alt', 'afift-disable-set-first', 'afift_lite2pro_ignore_notice4');
DELETE FROM wp_termmeta WHERE meta_key IN ('afift-disable', '_wp_attachment_image_alt', 'afift-disable-set-first', 'afift_lite2pro_ignore_notice4');
DELETE FROM wp_commentmeta WHERE meta_key IN ('afift-disable', '_wp_attachment_image_alt', 'afift-disable-set-first', 'afift_lite2pro_ignore_notice4');

