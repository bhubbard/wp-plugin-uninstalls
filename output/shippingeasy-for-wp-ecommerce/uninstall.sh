#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shippingeasy_rate_settings_errors'
wp option delete 'base_country'
wp option delete 'base_city'
wp option delete 'base_zipcode'
wp option delete 'shippingeasy_rate_settings'
wp option delete 'shippingeasy_main_settings'
wp option delete 'shippingeasy_generated_apikey'
wp option delete 'shippingeasy_available_services'
wp option delete 'currency_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_product_metadata'"
