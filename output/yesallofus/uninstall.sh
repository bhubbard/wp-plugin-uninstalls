#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dltpays_store_id'
wp option delete 'dltpays_api_secret'
wp option delete 'dltpays_wallet_address'
wp option delete 'dltpays_payout_threshold'
wp option delete 'dltpays_payout_schedule'
wp option delete 'dltpays_payout_mode'
wp option delete 'dltpays_wallet_type'
wp option delete 'dltpays_social_provider'
wp option delete 'dltpays_api_key'
wp option delete 'dltpays_referral_code'
wp option delete 'dltpays_commission_rates'
wp option delete 'dltpays_cookie_days'
wp option delete 'dltpays_testnet_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dltpays_referral_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dltpays_referral_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dltpays_referral_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dltpays_referral_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dltpays_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dltpays_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dltpays_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dltpays_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dltpays_payout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dltpays_payout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dltpays_payout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dltpays_payout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dltpays_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dltpays_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dltpays_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dltpays_error'"
