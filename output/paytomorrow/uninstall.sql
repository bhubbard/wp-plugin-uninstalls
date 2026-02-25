-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_paytomorrow_settings', 'woocommerce_new_order_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Payer PayTomorrow address', 'Payer first name', 'Payer last name', 'Payment type', 'carrier', 'tracking_number', '_routeapp_route_charge');
DELETE FROM wp_usermeta WHERE meta_key IN ('Payer PayTomorrow address', 'Payer first name', 'Payer last name', 'Payment type', 'carrier', 'tracking_number', '_routeapp_route_charge');
DELETE FROM wp_termmeta WHERE meta_key IN ('Payer PayTomorrow address', 'Payer first name', 'Payer last name', 'Payment type', 'carrier', 'tracking_number', '_routeapp_route_charge');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Payer PayTomorrow address', 'Payer first name', 'Payer last name', 'Payment type', 'carrier', 'tracking_number', '_routeapp_route_charge');

