#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_billing_field_salutation'
wp option delete 'woocommerce_enable_shipping_field_salutation'
wp option delete 'woocommerce_salutation_field_type'
wp option delete 'woocommerce_salutation_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_salutation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_salutation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_salutation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_salutation'"
