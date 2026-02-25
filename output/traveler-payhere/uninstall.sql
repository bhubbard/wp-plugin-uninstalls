-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_price', 'item_id', 'st_first_name', 'st_last_name', 'st_address', 'st_address2', 'st_city', 'st_country', 'st_email', 'st_phone', 'status', 'order_token_code', 'is_meta_payment_gateway_st_payhere');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_price', 'item_id', 'st_first_name', 'st_last_name', 'st_address', 'st_address2', 'st_city', 'st_country', 'st_email', 'st_phone', 'status', 'order_token_code', 'is_meta_payment_gateway_st_payhere');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_price', 'item_id', 'st_first_name', 'st_last_name', 'st_address', 'st_address2', 'st_city', 'st_country', 'st_email', 'st_phone', 'status', 'order_token_code', 'is_meta_payment_gateway_st_payhere');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_price', 'item_id', 'st_first_name', 'st_last_name', 'st_address', 'st_address2', 'st_city', 'st_country', 'st_email', 'st_phone', 'status', 'order_token_code', 'is_meta_payment_gateway_st_payhere');

