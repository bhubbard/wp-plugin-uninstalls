-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('before_image', 'after_image', '_wp_attachment_image_alt', 'layout', 'slider_shadow_switch', 'slider_img_offset', 'slider_on_mouseover', 'slider_shadow_h_offset', 'slider_shadow_v_offset', 'slider_shadow_blur', 'slider_shadow_color', 'slider_handle_color', 'slider_box_width', 'slider_box_height');
DELETE FROM wp_usermeta WHERE meta_key IN ('before_image', 'after_image', '_wp_attachment_image_alt', 'layout', 'slider_shadow_switch', 'slider_img_offset', 'slider_on_mouseover', 'slider_shadow_h_offset', 'slider_shadow_v_offset', 'slider_shadow_blur', 'slider_shadow_color', 'slider_handle_color', 'slider_box_width', 'slider_box_height');
DELETE FROM wp_termmeta WHERE meta_key IN ('before_image', 'after_image', '_wp_attachment_image_alt', 'layout', 'slider_shadow_switch', 'slider_img_offset', 'slider_on_mouseover', 'slider_shadow_h_offset', 'slider_shadow_v_offset', 'slider_shadow_blur', 'slider_shadow_color', 'slider_handle_color', 'slider_box_width', 'slider_box_height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('before_image', 'after_image', '_wp_attachment_image_alt', 'layout', 'slider_shadow_switch', 'slider_img_offset', 'slider_on_mouseover', 'slider_shadow_h_offset', 'slider_shadow_v_offset', 'slider_shadow_blur', 'slider_shadow_color', 'slider_handle_color', 'slider_box_width', 'slider_box_height');

