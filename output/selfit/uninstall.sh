#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_selfit_settings'
wp option delete 'selfit_access_token'
wp option delete 'selfit_refresh_token'
wp option delete 'selfit_access_token_expiry'
wp option delete 'selfit_refresh_token_expiry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digits_phone_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selfit_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selfit_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selfit_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selfit_payment_id'"
