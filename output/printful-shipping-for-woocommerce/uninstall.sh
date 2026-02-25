#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_printful_settings'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_based_on'

# Delete Transients
wp transient delete 'printful_stats'
wp transient delete 'printful_orders'
wp transient delete 'printful_carriers'
wp transient delete 'printful_tax_countries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_customizable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_customizable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_customizable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_customizable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_size_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_size_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_size_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_size_chart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pf_advanced_size_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pf_advanced_size_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pf_advanced_size_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pf_advanced_size_chart'"
