-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dr_admin_email', 'dr_use_dr_styles', 'dr_custom_thank_you_page', 'dr_custom_name_label', 'dr_custom_name_placeholder', 'dr_custom_testimonial_label', 'dr_custom_testimonial_placeholder', 'dr_theme', 'dr_custom_bg', 'dr_custom_txt_clr', 'dr_border_radius', 'dr_border_radius_type', 'dr_button_colour', 'destiny_reviews_client_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('destiny_reviews_client_name', '_destiny_reviews_comment', '_destiny_reviews_position', '_destiny_reviews_rating', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('destiny_reviews_client_name', '_destiny_reviews_comment', '_destiny_reviews_position', '_destiny_reviews_rating', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('destiny_reviews_client_name', '_destiny_reviews_comment', '_destiny_reviews_position', '_destiny_reviews_rating', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('destiny_reviews_client_name', '_destiny_reviews_comment', '_destiny_reviews_position', '_destiny_reviews_rating', '_wp_attachment_image_alt');

