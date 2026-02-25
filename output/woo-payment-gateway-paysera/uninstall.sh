#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_paysera_settings'

# Delete Transients
wp transient delete 'paysera_plugins_needs_deactivation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paysera_new_delivery_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paysera_new_delivery_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paysera_new_delivery_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paysera_new_delivery_notice'"
