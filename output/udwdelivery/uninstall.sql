-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udwd-extra_fee', 'udwd-api-customer-id', 'udwd-api-client-id', 'udwd-api-client-secret', 'woocommerce_store_address', 'udwd-phone_number', 'udwd-pickup_time-start', 'udwd-pickup_time-end', 'udwd-pickup_time-weekend', 'udwd-pickup_time-processing', 'udwd-api-access-token');

