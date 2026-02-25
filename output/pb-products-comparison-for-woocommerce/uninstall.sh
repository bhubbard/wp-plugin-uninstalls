#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pbpc-enabled'
wp option delete 'pbpc-button_text'
wp option delete 'pbpc-max_products'
wp option delete 'pbpc-disable_shop'
wp option delete 'pbpc-disable_product'
wp option delete 'pbpc-table_caption'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comparison_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comparison_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comparison_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comparison_attributes'"
