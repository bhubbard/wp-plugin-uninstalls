#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yesh_invoice_businesses'
wp option delete 'custom_installments'
wp option delete 'woocommerce_yeshin_settings'
wp option delete '_yeshin_send_invoice_sms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yesh_business_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yesh_business_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yesh_business_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yesh_business_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_invoice_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_invoice_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_invoice_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_invoice_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeshin_response_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeshin_response_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeshin_response_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeshin_response_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeshin_payment_json_res'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeshin_payment_json_res'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeshin_payment_json_res'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeshin_payment_json_res'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yeshin_taxn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yeshin_taxn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yeshin_taxn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yeshin_taxn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_renta_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_renta_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_renta_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_renta_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text_input_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text_input_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text_input_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text_input_y'"
