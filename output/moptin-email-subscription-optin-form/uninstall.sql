-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cookie', 'subheading', 'bg_color', 'bg_color_opacity', 'text_color', 'btn_color', 'input_bg_color', 'input_color', 'placeholder_color', 'btn_text_color', 'img_size', 'img_align', 'form', 'boxed', 'imgC_width', 'conC_width', 'type', 'input__border_radius__width', 'input__border_width', 'input__border_color', 'display_condition');
DELETE FROM wp_usermeta WHERE meta_key IN ('cookie', 'subheading', 'bg_color', 'bg_color_opacity', 'text_color', 'btn_color', 'input_bg_color', 'input_color', 'placeholder_color', 'btn_text_color', 'img_size', 'img_align', 'form', 'boxed', 'imgC_width', 'conC_width', 'type', 'input__border_radius__width', 'input__border_width', 'input__border_color', 'display_condition');
DELETE FROM wp_termmeta WHERE meta_key IN ('cookie', 'subheading', 'bg_color', 'bg_color_opacity', 'text_color', 'btn_color', 'input_bg_color', 'input_color', 'placeholder_color', 'btn_text_color', 'img_size', 'img_align', 'form', 'boxed', 'imgC_width', 'conC_width', 'type', 'input__border_radius__width', 'input__border_width', 'input__border_color', 'display_condition');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cookie', 'subheading', 'bg_color', 'bg_color_opacity', 'text_color', 'btn_color', 'input_bg_color', 'input_color', 'placeholder_color', 'btn_text_color', 'img_size', 'img_align', 'form', 'boxed', 'imgC_width', 'conC_width', 'type', 'input__border_radius__width', 'input__border_width', 'input__border_color', 'display_condition');

