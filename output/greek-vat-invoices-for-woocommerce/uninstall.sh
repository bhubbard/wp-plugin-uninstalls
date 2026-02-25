#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GRVATIN_uppercase_fields'
wp option delete 'GRVATIN_version'
wp option delete 'GRVATIN_enable_aade_validation'
wp option delete 'GRVATIN_enable_vies_validation'
wp option delete 'GRVATIN_auto_send_invoice'
wp option delete 'GRVATIN_vat_exempt_eu'
wp option delete 'GRVATIN_vat_exempt_non_eu'
wp option delete 'grvatin_invoice_type_position'
wp option delete 'GRVATIN_article_39a'
wp option delete 'GRVATIN_article_39a_categories'
wp option delete 'GRVATIN_auto_send_email'
wp option delete 'GRVATIN_company_address'
wp option delete 'GRVATIN_company_name'
wp option delete 'GRVATIN_company_vat'
wp option delete 'GRVATIN_company_doy'
wp option delete 'GRVATIN_company_phone'
wp option delete 'GRVATIN_company_email'
wp option delete 'GRVATIN_company_website'
wp option delete 'GRVATIN_company_logo'
wp option delete 'grvatin_invoice_prefix'
wp option delete 'GRVATIN_greek_vat_validation_method'
wp option delete 'GRVATIN_vies_validation'
wp option delete 'GRVATIN_aade_username'
wp option delete 'GRVATIN_aade_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_doy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_doy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_doy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_doy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_business_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_business_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_business_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_business_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vies_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vies_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vies_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vies_validated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_exempt_39a'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_exempt_39a'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_exempt_39a'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_exempt_39a'"
