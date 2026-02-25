-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awebooking_admin_notices', 'awebooking_room_type_permalink', 'awebooking_hotel_permalink', 'awebooking_premium_api_code', 'awebooking_version', 'awebooking_db_version', 'awebooking_premium_themes', 'awebooking_premium_addons', '_awebooking_activation_redirect', 'awebooking_installing', '_suru_libs_google_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_maximum_occupancy', '_hotel_id', 'is_customer_note', '_service_operation', '_operation', '_service_value', '_amount', '_icon', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_maximum_occupancy', '_hotel_id', 'is_customer_note', '_service_operation', '_operation', '_service_value', '_amount', '_icon', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_maximum_occupancy', '_hotel_id', 'is_customer_note', '_service_operation', '_operation', '_service_value', '_amount', '_icon', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_maximum_occupancy', '_hotel_id', 'is_customer_note', '_service_operation', '_operation', '_service_value', '_amount', '_icon', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

