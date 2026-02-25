#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pftfw_display_fees_single'
wp option delete 'pftfw_name_conflicts'
wp option delete 'pftfw_fee_tax_class'

# Delete Transients
wp transient delete 'pftfw_network_activation_error'
wp transient delete 'pftfw_activation_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pftfw_product_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pftfw_product_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pftfw_product_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pftfw_product_fees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product-fee-multiplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product-fee-multiplier'"
