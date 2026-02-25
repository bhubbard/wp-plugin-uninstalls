#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storesetup_is_done'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'

