#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tes_user'
wp option delete 'couryier_account_no'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'

# Delete Transients
wp transient delete 'currency_rates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awb_tracking_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awb_tracking_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awb_tracking_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awb_tracking_no'"
