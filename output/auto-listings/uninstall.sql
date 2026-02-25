-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_listings_options', 'auto_listings_db_version', 'auto_listings_version', 'auto_listings_version_upgraded_from', 'mbfs_db_version', 'mbfs_keys', 'al_vehicle_filter_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_al_enquiry_listing_id', '_al_enquiry_listing_title', '_al_enquiry_listing_seller', '_al_enquiry_email', '_al_listing_enquiries', '_al_enquiry_name', '_al_enquiry_phone', '_al_enquiry_message', '_al_listing_model_name', '_al_listing_image_gallery', '_thumbnail_id', 'ct_builder_shortcodes', '_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_al_enquiry_listing_id', '_al_enquiry_listing_title', '_al_enquiry_listing_seller', '_al_enquiry_email', '_al_listing_enquiries', '_al_enquiry_name', '_al_enquiry_phone', '_al_enquiry_message', '_al_listing_model_name', '_al_listing_image_gallery', '_thumbnail_id', 'ct_builder_shortcodes', '_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_al_enquiry_listing_id', '_al_enquiry_listing_title', '_al_enquiry_listing_seller', '_al_enquiry_email', '_al_listing_enquiries', '_al_enquiry_name', '_al_enquiry_phone', '_al_enquiry_message', '_al_listing_model_name', '_al_listing_image_gallery', '_thumbnail_id', 'ct_builder_shortcodes', '_bricks_page_content_2', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_al_enquiry_listing_id', '_al_enquiry_listing_title', '_al_enquiry_listing_seller', '_al_enquiry_email', '_al_listing_enquiries', '_al_enquiry_name', '_al_enquiry_phone', '_al_enquiry_message', '_al_listing_model_name', '_al_listing_image_gallery', '_thumbnail_id', 'ct_builder_shortcodes', '_bricks_page_content_2', '_elementor_data');

