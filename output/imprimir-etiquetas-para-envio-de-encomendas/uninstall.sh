#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'iee_free_blocked_by_pro'
wp transient delete 'iee_free_auto_deactivated'

