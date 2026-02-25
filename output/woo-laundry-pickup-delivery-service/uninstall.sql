-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('byclaundryservice_pickup_time_slot_by_start', 'byclaundryservice_pickup_time_slot_by_end', 'byclaundryservice_delivery_time_slot_by_start', 'byclaundryservice_delivery_time_slot_by_end', 'woocommerce_checkout_page_id', 'bycwclaundryservice_general_holiday', 'byconsolewoolaundry_free_plugin_activation_date', 'byconsolewooodt_free_plugin_activation_date', 'byclaundryservice_date_format', 'byconsolewoolaundry_free_plugin_admin_access_date', 'byclaundryservice_admin_national_holiday_date', 'byclaundryservice_admin_casual_holiday_date', 'byclaundryservice_admin_national_holiday_delivery_date', 'byclaundryservice_admin_casual_holiday_delivery_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('byconsolewclaundry_pickup_date', 'byconsolewclaundry_pickup_time', 'byconsolewclaundry_delivery_date', 'byconsolewclaundry_delivery_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('byconsolewclaundry_pickup_date', 'byconsolewclaundry_pickup_time', 'byconsolewclaundry_delivery_date', 'byconsolewclaundry_delivery_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('byconsolewclaundry_pickup_date', 'byconsolewclaundry_pickup_time', 'byconsolewclaundry_delivery_date', 'byconsolewclaundry_delivery_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('byconsolewclaundry_pickup_date', 'byconsolewclaundry_pickup_time', 'byconsolewclaundry_delivery_date', 'byconsolewclaundry_delivery_time');

