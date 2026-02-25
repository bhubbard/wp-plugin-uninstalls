#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'webhook_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_insta_paymrnt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_insta_paymrnt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_insta_paymrnt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_insta_paymrnt_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptm_authorization_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptm_authorization_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptm_authorization_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptm_authorization_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payu_authorization_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payu_authorization_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payu_authorization_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payu_authorization_id'"
