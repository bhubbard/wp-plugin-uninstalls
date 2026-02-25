#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bigcommerce_currency_symbol'
wp option delete 'bigcommerce_advance_search_option_name'
wp option delete 'bas_design_search_box_general'
wp option delete 'bas_design_search_box'
wp option delete 'bas_design_search_button'
wp option delete 'bas_design_search_others'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigcommerce_calculated_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigcommerce_calculated_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigcommerce_calculated_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigcommerce_calculated_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bigcommerce_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bigcommerce_id'"
