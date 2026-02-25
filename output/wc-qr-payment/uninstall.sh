#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_qr_pay_allow'
wp option delete 'woo_qr_pay_iban'
wp option delete 'woo_qr_pay_account_owner'
wp option delete 'woo_qr_pay_compatibility_mode'
wp option delete 'woo_qr_pay_add_to_email'
wp option delete 'woo_qr_pay_custom_description_email_visibility'
wp option delete 'woocommerce_bacs_settings'
wp option delete 'woo_qr_pay_custom_description'
wp option delete 'wc_qr_payment_migrated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_qr_payment_code_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_qr_payment_code_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_qr_payment_code_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_qr_payment_code_url'"
