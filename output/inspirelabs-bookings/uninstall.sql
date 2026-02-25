-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inspirelabs_bookings_db', 'inspirelabs_bookings_short_booking', 'inspirelabs_bookings_advance');
DELETE FROM wp_options WHERE option_name LIKE '%_is_registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ilabs_booking_fees', 'ilabs_bookings_24h_mode', '_booking_advance_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('ilabs_booking_fees', 'ilabs_bookings_24h_mode', '_booking_advance_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('ilabs_booking_fees', 'ilabs_bookings_24h_mode', '_booking_advance_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ilabs_booking_fees', 'ilabs_bookings_24h_mode', '_booking_advance_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_booking_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'booking_price_list_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'booking_price_list_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'booking_price_list_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'booking_price_list_%';

