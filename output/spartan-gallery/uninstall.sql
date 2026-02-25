-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', '_welcome_redirect_wpw', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image_layout_select', 'spartan_gallery_uploaded_images', 'spartan_gallery', '_wp_attachment_image_alt', 'add_extra_css', 'display_original', 'img_margin', 'thumbnail_options', 'textbox_height_range', 'display_text', 'info_background_color', 'container_font_size', 'thumbnail_size', 'image_width', 'image_height', 'font_family', 'image_measure_value', 'container_settings_on_off', 'container_height_width_range', 'container_background_color', 'container_border');
DELETE FROM wp_usermeta WHERE meta_key IN ('image_layout_select', 'spartan_gallery_uploaded_images', 'spartan_gallery', '_wp_attachment_image_alt', 'add_extra_css', 'display_original', 'img_margin', 'thumbnail_options', 'textbox_height_range', 'display_text', 'info_background_color', 'container_font_size', 'thumbnail_size', 'image_width', 'image_height', 'font_family', 'image_measure_value', 'container_settings_on_off', 'container_height_width_range', 'container_background_color', 'container_border');
DELETE FROM wp_termmeta WHERE meta_key IN ('image_layout_select', 'spartan_gallery_uploaded_images', 'spartan_gallery', '_wp_attachment_image_alt', 'add_extra_css', 'display_original', 'img_margin', 'thumbnail_options', 'textbox_height_range', 'display_text', 'info_background_color', 'container_font_size', 'thumbnail_size', 'image_width', 'image_height', 'font_family', 'image_measure_value', 'container_settings_on_off', 'container_height_width_range', 'container_background_color', 'container_border');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image_layout_select', 'spartan_gallery_uploaded_images', 'spartan_gallery', '_wp_attachment_image_alt', 'add_extra_css', 'display_original', 'img_margin', 'thumbnail_options', 'textbox_height_range', 'display_text', 'info_background_color', 'container_font_size', 'thumbnail_size', 'image_width', 'image_height', 'font_family', 'image_measure_value', 'container_settings_on_off', 'container_height_width_range', 'container_background_color', 'container_border');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'button_url_buttontitle%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'button_url_buttontitle%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'button_url_buttontitle%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'button_url_buttontitle%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

