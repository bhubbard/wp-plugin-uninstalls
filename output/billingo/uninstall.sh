#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_billingo_show_settings_notification'
wp option delete 'wc_billingo_api_key'
wp option delete 'wc_billingo_disable_proforma_invoicing'
wp option delete 'wc_billingo_storno_email'
wp option delete 'wc_billingo_invoice_block'
wp option delete 'wc_billingo_bank_account_huf'
wp option delete 'wc_billingo_bank_account_eur'
wp option delete 'wc_billingo_fallback_payment'
wp option delete 'wc_billingo_invoice_lang'
wp option delete 'wc_billingo_note'
wp option delete 'wc_billingo_invoice_round'
wp option delete 'wc_billingo_unit'
wp option delete 'wc_billingo_manual_type'
wp option delete 'wc_billingo_is_generate_erase_code'
wp option delete 'wc_billingo_auto_state'
wp option delete 'wc_billingo_company_name'
wp option delete 'wc_billingo_vat_number_form_custom'
wp option delete 'wc_billingo_vat_number_notice'
wp option delete 'wc_billingo_electronic'
wp option delete 'wc_billingo_product_sync'
wp option delete 'wc_billingo_note_barion'
wp option delete 'wc_billingo_sku'
wp option delete 'mark_paid_without_financial_fulfillment'
wp option delete 'wc_billingo_flip_name'
wp option delete 'wc_billingo_invoice_lang_wpml'
wp option delete 'wc_billingo_note_orderid'
wp option delete 'wc_billingo_block_child_orders'
wp option delete 'wc_billingo_vat_number_form'
wp option delete 'wc_billingo_vat_number_form_checkbox_custom'
wp option delete 'wc_billingo_discount_is_unique_item'
wp option delete 'wc_billingo_decimalsoff'
wp option delete 'wc_billingo_shippingcomment'
wp option delete 'wc_billingo_test'
wp option delete 'wc_billingo_auto_storno'
wp option delete 'wc_billingo_payment_request_auto'
wp option delete 'wc_billingo_auto'
wp option delete 'wc_billingo_tax_override_choice'
wp option delete 'wc_billingo_tax_override'
wp option delete 'wc_billingo_tax_override_entitlements'
wp option delete 'wc_billingo_tax_override_value'
wp option delete 'wc_billingo_tax_override_zero_entitlements'
wp option delete 'wc_billingo_tax_override_include_carrier'
wp option delete 'wc_billingo_tax_shipping_pirce_type_is_net'
wp option delete 'wc_billingo_always_add_carrier'
wp option delete 'wc_billingo_email'
wp option delete 'wc_billingo_proforma_email'
wp option delete 'wc_billingo_proforma_email_woo_btn'
wp option delete 'wc_billingo_email_woo_btn'
wp option delete 'wc_billingo_storno_email_woo_btn'
wp option delete 'wc_billingo_proforma_email_woo_text'
wp option delete 'wc_billingo_email_woo_text'
wp option delete 'wc_billingo_storno_email_woo_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_payment_method_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_paymentdue_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_mark_as_paid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_mark_as_paid2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_proforma_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_doff_%'"
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adoszam'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adoszam'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adoszam'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adoszam'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_tax_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_tax_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_tax_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_tax_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billingo_original_prices_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billingo_original_prices_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billingo_original_prices_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billingo_original_prices_saved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcpb_bundled_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcpb_bundled_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcpb_bundled_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcpb_bundled_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcpb_bundle_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcpb_bundle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcpb_bundle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcpb_bundle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcpb_bundle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wjecf_shipping_restrictions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wjecf_shipping_restrictions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wjecf_shipping_restrictions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wjecf_shipping_restrictions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billingo_notice_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billingo_notice_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billingo_notice_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billingo_notice_review_dismissed'"
