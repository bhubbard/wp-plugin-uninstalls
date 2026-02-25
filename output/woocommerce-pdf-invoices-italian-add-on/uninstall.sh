#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpo_wcpdf_general_settings'
wp option delete 'wpo_wcpdf_documents_settings_receipt'
wp option delete 'wcpdf_IT_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_customer_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_customer_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_customer_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_customer_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_cf2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_cf2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_cf2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_cf2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_PEC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_PEC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_PEC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_PEC'"
