#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wc_yeshinvoices_test_secret_key'
wp option delete '_wc_yeshinvoices_test_user_key'
wp option delete '_wc_yeshinvoices_title'
wp option delete '_wc_yeshinvoices_notes'
wp option delete '_wc_yeshinvoices_notes_bottom'
wp option delete '_wc_yeshinvoices_currency_id'
wp option delete '_wc_yeshinvoices_invoice_lang_id'
wp option delete '_wc_yeshinvoices_document_type'
wp option delete '_wc_yeshinvoices_send_invoice_sms'
wp option delete '_wc_yeshinvoices_send_invoice_email'
wp option delete '_wc_yeshinvoices_send_invoice_shipping'
wp option delete '_wc_yeshinvoices_includetax'
wp option delete '_wc_yeshthanktitle'
wp option delete '_wc_yeshthankbody'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_yeshinvoice_invoice_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_yeshinvoice_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
