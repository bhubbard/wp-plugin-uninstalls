#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'devikit_wfirma_banner_dismissed'
wp option delete 'devikit_wfirma_banner_remind_later'
wp option delete 'devikit_wfirma_settings'
wp option delete 'devikit_wfirma_pro_settings'
wp option delete 'devikit_wfirma_warehouse_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_want_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_want_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_want_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_want_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfirma_unit_of_measure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfirma_unit_of_measure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfirma_unit_of_measure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfirma_unit_of_measure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfirma_lump_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfirma_lump_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfirma_lump_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfirma_lump_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfirma_kod_produktu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfirma_kod_produktu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfirma_kod_produktu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfirma_kod_produktu'"
