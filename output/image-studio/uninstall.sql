-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_facebook', 'use_global', 'overlay_color', 'use_gradient', 'overlay_color_to', 'opacity', 'gradient_rotation', 'font_family', 'font_color', 'font_size', 'font_style', 'text_position', 'text_position_hor', 'fields_to_display', 'rewrite_og_image', 'param_hash', 'image_twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_facebook', 'use_global', 'overlay_color', 'use_gradient', 'overlay_color_to', 'opacity', 'gradient_rotation', 'font_family', 'font_color', 'font_size', 'font_style', 'text_position', 'text_position_hor', 'fields_to_display', 'rewrite_og_image', 'param_hash', 'image_twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_facebook', 'use_global', 'overlay_color', 'use_gradient', 'overlay_color_to', 'opacity', 'gradient_rotation', 'font_family', 'font_color', 'font_size', 'font_style', 'text_position', 'text_position_hor', 'fields_to_display', 'rewrite_og_image', 'param_hash', 'image_twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_facebook', 'use_global', 'overlay_color', 'use_gradient', 'overlay_color_to', 'opacity', 'gradient_rotation', 'font_family', 'font_color', 'font_size', 'font_style', 'text_position', 'text_position_hor', 'fields_to_display', 'rewrite_og_image', 'param_hash', 'image_twitter');

