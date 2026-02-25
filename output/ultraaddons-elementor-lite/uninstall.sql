-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'product_show_op', 'public_product_show_op');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('display-on-canvas-template', 'thumbnail_id', '_wp_attachment_image_alt', 'ua_page_template', 'ua_template_type', 'ua_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('display-on-canvas-template', 'thumbnail_id', '_wp_attachment_image_alt', 'ua_page_template', 'ua_template_type', 'ua_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('display-on-canvas-template', 'thumbnail_id', '_wp_attachment_image_alt', 'ua_page_template', 'ua_template_type', 'ua_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('display-on-canvas-template', 'thumbnail_id', '_wp_attachment_image_alt', 'ua_page_template', 'ua_template_type', 'ua_display');

