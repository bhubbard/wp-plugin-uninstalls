#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_pr_dhl_handover'
wp option delete '_pr_dhl_bulk_action_confirmation'
wp option delete 'woocommerce_pr_dhl_paket_settings'
wp option delete 'woocommerce_pr_dhl_ecomm_settings'
wp option delete 'wc_pip_link_color'

# Delete Transients
wp transient delete '_dhl_auth_token_rest'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_dhl_label_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_dhl_label_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_dhl_label_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_dhl_label_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dhl_manufacture_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dhl_manufacture_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dhl_manufacture_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dhl_manufacture_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dhl_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dhl_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dhl_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dhl_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dhl_export_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dhl_export_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dhl_export_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dhl_export_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dhl_dangerous_goods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dhl_dangerous_goods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dhl_dangerous_goods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dhl_dangerous_goods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dhl_no_same_day_transfer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dhl_no_same_day_transfer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dhl_no_same_day_transfer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dhl_no_same_day_transfer'"
