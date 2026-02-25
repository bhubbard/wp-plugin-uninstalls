#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skydropx_visited_permalink_view'
wp option delete 'SKYDROPX_SHOP_ID'
wp option delete 'rewrite_rules'
wp option delete 'SKYDROPX_ENABLE_QUOTATION'
wp option delete 'SKYDROPX_COUNTRY_QUOTATION'
wp option delete 'SKYDROPX_TOKEN'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'

