-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctpo_review_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('author', 'phone', 'recommend', 'service', 'city', 'city_service', 'state', 'zip_code', 'ctpo_review_title', 'city_state', 'rating_enum', 'testimonial_image', 'hidden_value', 'hidden_value_2', 'contempo_map_check', 'contempo_review_check', 'contempo_phone_check', 'contempo_city_check', 'contempo_state_check', 'contempo_country_check', 'contempo_zip_check', 'contempo_recommend_check', 'contempo_title_check', 'testimonial_value', 'testimonial_excerpt_check', 'services_stored_1', 'ratings_stored_1', 'ratings_images_1', 'contempo_map_center', 'contempo_map_zoom', 'testimonial_city', 'testimonial_service', 'testimonial_pages', 'company_type', 'company_name', 'company_url', 'contempo_review_title', 'contempo_review_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('author', 'phone', 'recommend', 'service', 'city', 'city_service', 'state', 'zip_code', 'ctpo_review_title', 'city_state', 'rating_enum', 'testimonial_image', 'hidden_value', 'hidden_value_2', 'contempo_map_check', 'contempo_review_check', 'contempo_phone_check', 'contempo_city_check', 'contempo_state_check', 'contempo_country_check', 'contempo_zip_check', 'contempo_recommend_check', 'contempo_title_check', 'testimonial_value', 'testimonial_excerpt_check', 'services_stored_1', 'ratings_stored_1', 'ratings_images_1', 'contempo_map_center', 'contempo_map_zoom', 'testimonial_city', 'testimonial_service', 'testimonial_pages', 'company_type', 'company_name', 'company_url', 'contempo_review_title', 'contempo_review_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('author', 'phone', 'recommend', 'service', 'city', 'city_service', 'state', 'zip_code', 'ctpo_review_title', 'city_state', 'rating_enum', 'testimonial_image', 'hidden_value', 'hidden_value_2', 'contempo_map_check', 'contempo_review_check', 'contempo_phone_check', 'contempo_city_check', 'contempo_state_check', 'contempo_country_check', 'contempo_zip_check', 'contempo_recommend_check', 'contempo_title_check', 'testimonial_value', 'testimonial_excerpt_check', 'services_stored_1', 'ratings_stored_1', 'ratings_images_1', 'contempo_map_center', 'contempo_map_zoom', 'testimonial_city', 'testimonial_service', 'testimonial_pages', 'company_type', 'company_name', 'company_url', 'contempo_review_title', 'contempo_review_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('author', 'phone', 'recommend', 'service', 'city', 'city_service', 'state', 'zip_code', 'ctpo_review_title', 'city_state', 'rating_enum', 'testimonial_image', 'hidden_value', 'hidden_value_2', 'contempo_map_check', 'contempo_review_check', 'contempo_phone_check', 'contempo_city_check', 'contempo_state_check', 'contempo_country_check', 'contempo_zip_check', 'contempo_recommend_check', 'contempo_title_check', 'testimonial_value', 'testimonial_excerpt_check', 'services_stored_1', 'ratings_stored_1', 'ratings_images_1', 'contempo_map_center', 'contempo_map_zoom', 'testimonial_city', 'testimonial_service', 'testimonial_pages', 'company_type', 'company_name', 'company_url', 'contempo_review_title', 'contempo_review_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'rating_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'rating_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'rating_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rating_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ratings_stored_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ratings_stored_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ratings_stored_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ratings_stored_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'services_stored_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'services_stored_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'services_stored_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'services_stored_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ratings_images_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ratings_images_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ratings_images_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ratings_images_%';

