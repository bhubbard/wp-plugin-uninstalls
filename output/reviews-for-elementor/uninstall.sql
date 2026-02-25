-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('testimonials_support_settings', 'testimonials_reviews_list_options', 'testimonials_settings', 'testimonials_review_settings_options', 'testimonials_settings_settings', 'cpo_content_settings');
DELETE FROM wp_options WHERE option_name LIKE 'imageobject_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('testimonial_image', 'testimonial_rating', 'testimonial_text', 'testimonial_time', 'testimonial_location_id', 'testimonial_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('testimonial_image', 'testimonial_rating', 'testimonial_text', 'testimonial_time', 'testimonial_location_id', 'testimonial_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('testimonial_image', 'testimonial_rating', 'testimonial_text', 'testimonial_time', 'testimonial_location_id', 'testimonial_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('testimonial_image', 'testimonial_rating', 'testimonial_text', 'testimonial_time', 'testimonial_location_id', 'testimonial_link');

