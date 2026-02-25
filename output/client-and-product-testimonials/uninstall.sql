-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cat_options', 'client_and_product_testimonials_activation_redirect', 'client_and_product_testimonials_license_key', 'client_and_product_testimonials_license_status', 'capt_admin_upsell_banner');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_testimonial_details_video_player_parameters', '_testimonial_details_vimeo_video_color', '_testimonial_details_video_testimonial_url', '_testimonial_details_video_testimonial', '_testimonial_details_testimonial_rating', '_testimonial_details_client_position', '_testimonial_details_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_testimonial_details_video_player_parameters', '_testimonial_details_vimeo_video_color', '_testimonial_details_video_testimonial_url', '_testimonial_details_video_testimonial', '_testimonial_details_testimonial_rating', '_testimonial_details_client_position', '_testimonial_details_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_testimonial_details_video_player_parameters', '_testimonial_details_vimeo_video_color', '_testimonial_details_video_testimonial_url', '_testimonial_details_video_testimonial', '_testimonial_details_testimonial_rating', '_testimonial_details_client_position', '_testimonial_details_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_testimonial_details_video_player_parameters', '_testimonial_details_vimeo_video_color', '_testimonial_details_video_testimonial_url', '_testimonial_details_video_testimonial', '_testimonial_details_testimonial_rating', '_testimonial_details_client_position', '_testimonial_details_url', '_wp_attachment_image_alt');

