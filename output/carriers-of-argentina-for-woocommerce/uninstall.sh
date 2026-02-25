#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kshipping_boxes_installed'
wp option delete 'woocommerce_kshippingargentina-manager_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%conversion_rate'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kshipping_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kshipping_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kshipping_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kshipping_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_force_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_force_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_force_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_force_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_package_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_package_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_package_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_package_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kshippingargentina_label_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kshippingargentina_label_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kshippingargentina_label_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kshippingargentina_label_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kshippingargentina_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kshippingargentina_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kshippingargentina_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kshippingargentina_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kshippingargentina_label_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kshippingargentina_label_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kshippingargentina_label_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kshippingargentina_label_data'"
