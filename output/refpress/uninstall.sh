#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'refpress_settings'
wp option delete 'refpress_payout_settings'
wp option delete 'refpress_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referer_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referer_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referer_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referer_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referer_wp_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referer_wp_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referer_wp_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referer_wp_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_is_renewal'"
