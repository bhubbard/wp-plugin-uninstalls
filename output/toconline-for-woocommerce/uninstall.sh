#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tocwoo_countries'
wp option delete 'tocwoo_tax_exemption_reasons'
wp option delete 'tocwoo_invoice_series'
wp option delete 'tocwoo_credit-note_series'
wp option delete 'tocwoo_notice-of-settlement_series'
wp option delete 'tocwoo_tax_rates'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'tocwoo_api_clientid'
wp option delete 'tocwoo_api_secret'
wp option delete 'tocwoo_api_url'
wp option delete 'tocwoo_api_auth_url'
wp option delete 'tocwoo_api_auth_redirect_url'
wp option delete 'tocwoo_api_connected'
wp option delete 'tocwoo_trn_method'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_settings'"
wp option delete 'woocommerce_email_footer_text'
wp option delete 'tocwoo_tax_exemption_reason_id'
wp option delete 'tocwoo_invoice_series_id'
wp option delete 'tocwoo_invoices_generated'
wp option delete 'toconline_shipping_ids'
wp option delete 'toconline_shipping_item_codes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_invoice_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_invoice_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_invoice_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_invoice_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tocwoo_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tocwoo_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tocwoo_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tocwoo_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tocwoo_trn_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tocwoo_trn_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tocwoo_trn_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tocwoo_trn_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_doc_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_doc_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_doc_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_doc_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tocwoo_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tocwoo_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tocwoo_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tocwoo_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_invoice_doc_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_invoice_doc_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_invoice_doc_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_invoice_doc_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_invoice_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_invoice_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_invoice_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_invoice_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_customer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_customer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_customer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_customer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toconline_item_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toconline_item_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toconline_item_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toconline_item_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'toconline_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'toconline_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'toconline_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'toconline_%'"
