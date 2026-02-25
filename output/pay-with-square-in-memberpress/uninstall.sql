-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mepr_free_square_mode', 'mepr_free_square_access_token_sandbox', 'mepr_free_square_access_token', 'mepr_free_square_refresh_token_sandbox', 'mepr_free_square_response_body_sandbox', 'mepr_free_square_refresh_token', 'mepr_free_square_response_body', 'mepr_options', 'mepr-square-locationId', 'mepr_free_square_app_id', 'mepr_free_square_locations_sandbox', 'mepr_free_square_locations');
DELETE FROM wp_options WHERE option_name LIKE 'square_refund_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'mepr_free_square_locations%';
DELETE FROM wp_options WHERE option_name LIKE 'mepr_integrations_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mepr_product_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mepr_product_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mepr_product_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mepr_product_price');

