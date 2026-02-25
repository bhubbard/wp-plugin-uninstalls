#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'takbull_invoice_enabled'
wp option delete 'api_key_invoice'
wp option delete 'api_secret_invoice'
wp option delete 'takbull_invoice_document_type'
wp option delete 'takbull_invoice_is_taxtable'
wp option delete 'takbull_invoice_send_email'
wp option delete 'takbull_invoice_send_sms'
wp option delete 'woocommerce_takbull_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_takbull_invoice_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'takbull_invoice_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'takbull_invoice_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'takbull_invoice_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'takbull_invoice_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'document_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'document_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'document_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'document_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'document_type'"
