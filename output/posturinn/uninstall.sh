#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_postis_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_shipment_pdf_printed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_shipment_pdf_printed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_shipment_pdf_printed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_shipment_pdf_printed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_dpo_postbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_dpo_postbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_dpo_postbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_dpo_postbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_dpo_phonenumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_dpo_phonenumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_dpo_phonenumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_dpo_phonenumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_shipment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_shipment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_shipment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_shipment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hsTariffNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hsTariffNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hsTariffNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hsTariffNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'descriptionOfContents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'descriptionOfContents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'descriptionOfContents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'descriptionOfContents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_dpt_parcelpoints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_dpt_parcelpoints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_dpt_parcelpoints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_dpt_parcelpoints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postis_dpt_phonenumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postis_dpt_phonenumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postis_dpt_phonenumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postis_dpt_phonenumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_kennitala'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_kennitala'"
