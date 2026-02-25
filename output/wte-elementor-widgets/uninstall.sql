-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_travel_engine_settings', '_wte_flagged_trips_on_sale', '_wte_elementor_widget_default_template', 'primary_pricing_category', 'wte_custom_filters');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_s_has_sale', '_elementor_data', '_elementor_page_layout', '_elementor_edit_mode', '_elementor_template_type', 'wpte_gallery_id', 'wp_travel_engine_setting', 'wpte_vid_gallery', 'wp_travel_engine_trip_min_age', 'wp_travel_engine_trip_max_age', 'WTE_Fixed_Starting_Dates_setting', 'wte_advanced_itinerary', 'trip_itinerary_chart_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_s_has_sale', '_elementor_data', '_elementor_page_layout', '_elementor_edit_mode', '_elementor_template_type', 'wpte_gallery_id', 'wp_travel_engine_setting', 'wpte_vid_gallery', 'wp_travel_engine_trip_min_age', 'wp_travel_engine_trip_max_age', 'WTE_Fixed_Starting_Dates_setting', 'wte_advanced_itinerary', 'trip_itinerary_chart_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_s_has_sale', '_elementor_data', '_elementor_page_layout', '_elementor_edit_mode', '_elementor_template_type', 'wpte_gallery_id', 'wp_travel_engine_setting', 'wpte_vid_gallery', 'wp_travel_engine_trip_min_age', 'wp_travel_engine_trip_max_age', 'WTE_Fixed_Starting_Dates_setting', 'wte_advanced_itinerary', 'trip_itinerary_chart_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_s_has_sale', '_elementor_data', '_elementor_page_layout', '_elementor_edit_mode', '_elementor_template_type', 'wpte_gallery_id', 'wp_travel_engine_setting', 'wpte_vid_gallery', 'wp_travel_engine_trip_min_age', 'wp_travel_engine_trip_max_age', 'WTE_Fixed_Starting_Dates_setting', 'wte_advanced_itinerary', 'trip_itinerary_chart_data');

