#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_wompi_Hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_wompi_Hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_wompi_Hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_wompi_Hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_wompi_cadena'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_wompi_cadena'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_wompi_cadena'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_wompi_cadena'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_wompi_StatusHash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_wompi_StatusHash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_wompi_StatusHash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_wompi_StatusHash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_wompi_transactionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_wompi_transactionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_wompi_transactionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_wompi_transactionid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_wompi_authcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_wompi_authcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_wompi_authcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_wompi_authcode'"
