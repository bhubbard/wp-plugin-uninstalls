-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mabox_options', 'ma_box_activation_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mabox_profile_template', 'mabox-profile-image', 'mabox_social_links', 'mabox_box_subset', 'mabox_box_name_font', 'mabox_box_web_font', 'mabox_box_desc_font', 'mabox_box_name_size', 'mabox_box_web_size', 'mabox_box_desc_size', 'mabox_box_icon_size', 'mabox_box_margin_top', 'mabox_box_margin_bottom', 'mabox_options', '_mabox_predefined_template', '_mabox_template_id', '_disable_mabox_author_here', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('mabox_profile_template', 'mabox-profile-image', 'mabox_social_links', 'mabox_box_subset', 'mabox_box_name_font', 'mabox_box_web_font', 'mabox_box_desc_font', 'mabox_box_name_size', 'mabox_box_web_size', 'mabox_box_desc_size', 'mabox_box_icon_size', 'mabox_box_margin_top', 'mabox_box_margin_bottom', 'mabox_options', '_mabox_predefined_template', '_mabox_template_id', '_disable_mabox_author_here', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('mabox_profile_template', 'mabox-profile-image', 'mabox_social_links', 'mabox_box_subset', 'mabox_box_name_font', 'mabox_box_web_font', 'mabox_box_desc_font', 'mabox_box_name_size', 'mabox_box_web_size', 'mabox_box_desc_size', 'mabox_box_icon_size', 'mabox_box_margin_top', 'mabox_box_margin_bottom', 'mabox_options', '_mabox_predefined_template', '_mabox_template_id', '_disable_mabox_author_here', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mabox_profile_template', 'mabox-profile-image', 'mabox_social_links', 'mabox_box_subset', 'mabox_box_name_font', 'mabox_box_web_font', 'mabox_box_desc_font', 'mabox_box_name_size', 'mabox_box_web_size', 'mabox_box_desc_size', 'mabox_box_icon_size', 'mabox_box_margin_top', 'mabox_box_margin_bottom', 'mabox_options', '_mabox_predefined_template', '_mabox_template_id', '_disable_mabox_author_here', '_wp_attachment_image_alt');

