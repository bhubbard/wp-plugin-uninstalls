-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('store_name', 'company_name', 'yml_store', 'yml_pickup', 'yml_delivery', 'yml_description', 'yml_currencies', 'woocommerce_version');

