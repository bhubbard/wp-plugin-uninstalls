-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('find_button_name', 'billing_email_layout', 'billing_last_name_layout', 'billing_company_layout', 'billing_city_layout', 'billing_phone_layout', 'shipping_last_name_layout', 'shipping_company_layout', 'shipping_city_layout', 'protocol_type', 'postcode_type');

