-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sio_api_link', 'sio_shop_uuid', 'sio_api_token', 'sio_api_price', 'sio_shop_einheit', 'sio_api_salebutton', 'sio_api_prgroup', 'sio_products', 'sio_product_uuid');

