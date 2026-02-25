#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_paid_cash_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_paid_cash_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_paid_cash_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_paid_cash_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_checkout_auth_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_checkout_auth_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_checkout_auth_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_checkout_auth_code'"
