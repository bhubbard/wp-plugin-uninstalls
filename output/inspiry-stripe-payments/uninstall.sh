#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isp_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'realhomes_stripe_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'realhomes_stripe_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'realhomes_stripe_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'realhomes_stripe_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isp_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isp_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isp_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isp_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_gross'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_gross'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_gross'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_gross'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_currency'"
