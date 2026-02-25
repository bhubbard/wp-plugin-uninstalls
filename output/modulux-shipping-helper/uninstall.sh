#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'modulux_weight_units'
wp option delete 'modulux_shipping_rules'
wp option delete 'modulux_shipping_calc_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight_unit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
