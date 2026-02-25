-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('copper_payment_gateway_ethereum_net', 'copper_payment_gateway_infura_api_id', 'copper_payment_gateway_copper_contract_address', 'copper_payment_gateway_copper_target_address', 'woocommerce_force_ssl_checkout', 'copper_payment_gateway_copper_abi_array', 'copper_payment_gateway_gas_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('copper_payment_gateway_eth_token', 'copper_payment_gateway_eth_addresses', 'copper_payment_gateway_tx');
DELETE FROM wp_usermeta WHERE meta_key IN ('copper_payment_gateway_eth_token', 'copper_payment_gateway_eth_addresses', 'copper_payment_gateway_tx');
DELETE FROM wp_termmeta WHERE meta_key IN ('copper_payment_gateway_eth_token', 'copper_payment_gateway_eth_addresses', 'copper_payment_gateway_tx');
DELETE FROM wp_commentmeta WHERE meta_key IN ('copper_payment_gateway_eth_token', 'copper_payment_gateway_eth_addresses', 'copper_payment_gateway_tx');

