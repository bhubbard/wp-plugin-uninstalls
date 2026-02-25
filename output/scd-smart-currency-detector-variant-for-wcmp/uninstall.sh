#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'scd_wcmp_first_install_date'
wp option delete 'scd_license_key'
wp option delete 'scd_license_start_date'
wp option delete 'scd_license_expiry_date'
wp option delete 'scd_license_options'
wp option delete 'scd_currency_options'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_term_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_term_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_term_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_term_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scd-user-currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user-currency-option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user-currency-option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user-currency-option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user-currency-option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scd_other_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_pv_shipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meta_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meta_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meta_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meta_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_meta_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_meta_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_meta_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_meta_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
