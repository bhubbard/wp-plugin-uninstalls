#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tubapay2_statuses_upgrade'
wp option delete 'tubapay2_token'
wp option delete 'tubapay2_refresh_token'
wp option delete 'tubapay2_token_expires'
wp option delete 'woocommerce_tubapay2_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agreementNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agreementNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agreementNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agreementNumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tubapay2Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tubapay2Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tubapay2Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tubapay2Response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tubapay2_RODO_BP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tubapay2_RODO_BP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tubapay2_RODO_BP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tubapay2_RODO_BP'"
