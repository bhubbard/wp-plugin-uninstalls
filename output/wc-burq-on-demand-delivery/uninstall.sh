#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_burq_settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'burq-quote-id'
wp transient delete 'burq-quote-delivery-time'

