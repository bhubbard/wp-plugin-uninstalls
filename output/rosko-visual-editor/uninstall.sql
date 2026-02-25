-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visual_editor_options', 'social_options', 'parallax', 'slider', 'galleries', 'staff', 'timeline', 'testimonials', 'infoboxes', 'facebook', 'twitter', 'linkedin', 'google', 'youtube', 'snapchat', 'mail');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('font-awesome-class', 'button-text', 'button-link', 'facebook', 'twitter', 'linkedin', 'name', 'job', 'starting-date', 'ending-date', 'meta-text', 'paragraph_bg_color', 'paragraph_txt_color', 'button_bg_color', 'button_txt_color', 'button_btn_color', 'social_btn_color', 'social_bg_color', 'gallery_color', 'infobox_color', 'testimonial_color', 'timeline_color', 'staff_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('font-awesome-class', 'button-text', 'button-link', 'facebook', 'twitter', 'linkedin', 'name', 'job', 'starting-date', 'ending-date', 'meta-text', 'paragraph_bg_color', 'paragraph_txt_color', 'button_bg_color', 'button_txt_color', 'button_btn_color', 'social_btn_color', 'social_bg_color', 'gallery_color', 'infobox_color', 'testimonial_color', 'timeline_color', 'staff_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('font-awesome-class', 'button-text', 'button-link', 'facebook', 'twitter', 'linkedin', 'name', 'job', 'starting-date', 'ending-date', 'meta-text', 'paragraph_bg_color', 'paragraph_txt_color', 'button_bg_color', 'button_txt_color', 'button_btn_color', 'social_btn_color', 'social_bg_color', 'gallery_color', 'infobox_color', 'testimonial_color', 'timeline_color', 'staff_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('font-awesome-class', 'button-text', 'button-link', 'facebook', 'twitter', 'linkedin', 'name', 'job', 'starting-date', 'ending-date', 'meta-text', 'paragraph_bg_color', 'paragraph_txt_color', 'button_bg_color', 'button_txt_color', 'button_btn_color', 'social_btn_color', 'social_bg_color', 'gallery_color', 'infobox_color', 'testimonial_color', 'timeline_color', 'staff_color');

