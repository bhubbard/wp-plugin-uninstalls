-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcdf_checkout_first_name', 'rcdf_checkout_last_name', 'rcdf_checkout_phone', 'rcdf_checkout_email', 'rcdf_checkout_product_name', 'rcdf_checkout_price', 'rcdf_checkout_trigger_element', 'rcdf_checkout_event_el');

