#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_takbull_settings'
wp option delete 'wc_takbull_show_changed_keys_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_takbull_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_takbull_tokenize_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_takbull_tokenize_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_takbull_tokenize_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_takbull_tokenize_payment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_secure_sms_uniq_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_secure_sms_uniq_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_secure_sms_uniq_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_secure_sms_uniq_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_takbull_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_takbull_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_takbull_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_takbull_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_secure_sms_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_secure_sms_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_secure_sms_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_secure_sms_validation'"
