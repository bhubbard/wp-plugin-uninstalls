#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcpc_fields_currency_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcpc_fields_currency_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcpc_fields_currency_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcpc_fields_currency_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcpc_fields_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcpc_fields_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcpc_fields_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcpc_fields_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tcpc_fields_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tcpc_fields_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tcpc_fields_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tcpc_fields_sale_price'"
