-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booking_admin_email', 'booking_form_page', 'booking_order_page', 'booking_thankyou_page', 'book_open_till', 'booking_admin_email_from_name', 'schd_booking_price');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('booking_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('booking_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('booking_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('booking_address');

