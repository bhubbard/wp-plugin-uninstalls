-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alphastay_custom_roles_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blocked_rooms', 'veg_count', 'nonveg_count', 'discount', 'booking_via_app', 'checkin_status', 'checkin_timestamp', 'paid_status', 'paid_timestamp', 'property_owner', 'multiuser_access', 'adult_price', 'child_price', 'total_room_inventory', 'max_occupancy', 'checkin_time', 'checkout_time', 'address_property', 'phone_contact', 'gmap_link', 'label_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('blocked_rooms', 'veg_count', 'nonveg_count', 'discount', 'booking_via_app', 'checkin_status', 'checkin_timestamp', 'paid_status', 'paid_timestamp', 'property_owner', 'multiuser_access', 'adult_price', 'child_price', 'total_room_inventory', 'max_occupancy', 'checkin_time', 'checkout_time', 'address_property', 'phone_contact', 'gmap_link', 'label_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('blocked_rooms', 'veg_count', 'nonveg_count', 'discount', 'booking_via_app', 'checkin_status', 'checkin_timestamp', 'paid_status', 'paid_timestamp', 'property_owner', 'multiuser_access', 'adult_price', 'child_price', 'total_room_inventory', 'max_occupancy', 'checkin_time', 'checkout_time', 'address_property', 'phone_contact', 'gmap_link', 'label_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blocked_rooms', 'veg_count', 'nonveg_count', 'discount', 'booking_via_app', 'checkin_status', 'checkin_timestamp', 'paid_status', 'paid_timestamp', 'property_owner', 'multiuser_access', 'adult_price', 'child_price', 'total_room_inventory', 'max_occupancy', 'checkin_time', 'checkout_time', 'address_property', 'phone_contact', 'gmap_link', 'label_text');

