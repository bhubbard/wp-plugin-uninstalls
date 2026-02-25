-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product-feeder-product-statuses', 'product-feeder-default-order-status', 'product-feeder-accepted-order-statuses', 'product-feeder-rejected-order-statuses', 'product-feeder-shipped-order-statuses', 'product_feeder_api_key', 'product-feeder-sizes', 'product-feeder-brand', 'product-feeder-ean', 'product-feeder-color', 'product-feeder-season', 'product-feeder-gender', 'product-feeder-material', 'product-feeder-condition', 'product-feeder-delivery-terms');

