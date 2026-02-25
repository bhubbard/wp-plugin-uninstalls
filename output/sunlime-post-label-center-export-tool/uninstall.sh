#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'splc_options'
wp option delete 'woocommerce_gzdp_invoice_path_suffix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sent_to_plc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sent_to_plc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sent_to_plc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sent_to_plc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_splc_shipping_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_splc_shipping_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_splc_shipping_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_splc_shipping_data'"
