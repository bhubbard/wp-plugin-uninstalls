-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ni_invoice_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method_title', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_postcode', '_billing_state', '_billing_country', '_billing_phone', '_order_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method_title', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_postcode', '_billing_state', '_billing_country', '_billing_phone', '_order_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method_title', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_postcode', '_billing_state', '_billing_country', '_billing_phone', '_order_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method_title', '_billing_email', '_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_postcode', '_billing_state', '_billing_country', '_billing_phone', '_order_total');

