#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipi_integration_key'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_currency'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_feature_product_block_editor_enabled'

# Delete Transients
wp transient delete 'shipi_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipi_pushed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipi_pushed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipi_pushed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipi_pushed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_tracking_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_tracking_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_tracking_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_tracking_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_carrier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_carrier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_carrier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_carrier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_carrier_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_carrier_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_carrier_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_carrier_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_order_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_order_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_order_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_order_processed'"
