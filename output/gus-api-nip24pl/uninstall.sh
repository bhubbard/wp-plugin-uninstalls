#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_nip24_option_keyid'
wp option delete 'woocommerce_nip24_option_key'
wp option delete 'woocommerce_version'
wp option delete 'woocommerce_nip24_option_url'
wp option delete 'woocommerce_nip24_option_vatid_field'
wp option delete 'woocommerce_nip24_option_vatid_required'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company_vat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company_vat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company_vat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company_vat_id'"
