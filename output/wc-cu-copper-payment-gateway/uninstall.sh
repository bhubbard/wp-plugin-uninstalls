#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'copper_payment_gateway_ethereum_net'
wp option delete 'copper_payment_gateway_infura_api_id'
wp option delete 'copper_payment_gateway_copper_contract_address'
wp option delete 'copper_payment_gateway_copper_target_address'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'copper_payment_gateway_copper_abi_array'
wp option delete 'copper_payment_gateway_gas_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copper_payment_gateway_eth_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copper_payment_gateway_eth_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copper_payment_gateway_eth_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copper_payment_gateway_eth_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copper_payment_gateway_eth_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copper_payment_gateway_eth_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copper_payment_gateway_eth_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copper_payment_gateway_eth_addresses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copper_payment_gateway_tx'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copper_payment_gateway_tx'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copper_payment_gateway_tx'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copper_payment_gateway_tx'"
