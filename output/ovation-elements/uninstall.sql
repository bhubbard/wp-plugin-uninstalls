-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovation_slider_is_premium');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ova_elems_template_id', '_ova_elems_slides', '_ova_elems_static_settings', '_ova_elems_selected_posts_template4', '_ova_elems_button_data_template4', '_ova_elems_tour_info_data_template4', '_ova_elems_video_data_template4', '_ova_elems_static_settings_template4', '_tutor_course_price_type', 'tutor_course_price', 'tutor_course_sale_price', '_tutor_course_level', '_course_duration', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ova_elems_template_id', '_ova_elems_slides', '_ova_elems_static_settings', '_ova_elems_selected_posts_template4', '_ova_elems_button_data_template4', '_ova_elems_tour_info_data_template4', '_ova_elems_video_data_template4', '_ova_elems_static_settings_template4', '_tutor_course_price_type', 'tutor_course_price', 'tutor_course_sale_price', '_tutor_course_level', '_course_duration', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ova_elems_template_id', '_ova_elems_slides', '_ova_elems_static_settings', '_ova_elems_selected_posts_template4', '_ova_elems_button_data_template4', '_ova_elems_tour_info_data_template4', '_ova_elems_video_data_template4', '_ova_elems_static_settings_template4', '_tutor_course_price_type', 'tutor_course_price', 'tutor_course_sale_price', '_tutor_course_level', '_course_duration', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ova_elems_template_id', '_ova_elems_slides', '_ova_elems_static_settings', '_ova_elems_selected_posts_template4', '_ova_elems_button_data_template4', '_ova_elems_tour_info_data_template4', '_ova_elems_video_data_template4', '_ova_elems_static_settings_template4', '_tutor_course_price_type', 'tutor_course_price', 'tutor_course_sale_price', '_tutor_course_level', '_course_duration', '_thumbnail_id');

