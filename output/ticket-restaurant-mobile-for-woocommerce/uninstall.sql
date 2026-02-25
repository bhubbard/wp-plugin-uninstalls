-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ticketrestaurant_mobile_settings', 'ticketrestaurant_mobile_auth_code', 'ticketrestaurant_mobile_callback_received');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ticketrestaurant_payment_id', '_ticketrestaurant_reference', '_ticketrestaurant_phone_number', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ticketrestaurant_payment_id', '_ticketrestaurant_reference', '_ticketrestaurant_phone_number', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ticketrestaurant_payment_id', '_ticketrestaurant_reference', '_ticketrestaurant_phone_number', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ticketrestaurant_payment_id', '_ticketrestaurant_reference', '_ticketrestaurant_phone_number', 'billing_phone');

