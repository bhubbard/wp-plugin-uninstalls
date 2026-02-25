#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pocoppa_visa'
wp option delete 'pocoppa_mc'
wp option delete 'pocoppa_amex'
wp option delete 'pocoppa_discover'
wp option delete 'partner_name'
wp option delete 'vendor_name'
wp option delete 'user'
wp option delete 'password'
wp option delete 'transaction_type'
wp option delete 'payment_gateway'
wp option delete 'pocoppa_transaction_type'
wp option delete 'pocoppa_payment_gateway'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_pnref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_pnref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_pnref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_pnref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_expdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_expdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_expdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_expdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_acct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_acct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_acct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_acct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_secure_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_secure_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_secure_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_secure_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_secure_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_secure_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_secure_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_secure_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_partner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_partner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_partner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_partner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppa_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppa_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppa_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppa_password'"
