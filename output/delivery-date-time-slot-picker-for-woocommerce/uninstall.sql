-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('delidaam_delivery_blackout_dates', 'delidaam_delivery_time_slots');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Delivery Date', 'Delivery Time Slot');
DELETE FROM wp_usermeta WHERE meta_key IN ('Delivery Date', 'Delivery Time Slot');
DELETE FROM wp_termmeta WHERE meta_key IN ('Delivery Date', 'Delivery Time Slot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Delivery Date', 'Delivery Time Slot');

