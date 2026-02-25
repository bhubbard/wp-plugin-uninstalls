#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postfinancecheckout_subscription_space_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postfinancecheckout_subscription_space_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postfinancecheckout_subscription_space_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postfinancecheckout_subscription_space_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postfinancecheckout_subscription_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postfinancecheckout_subscription_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postfinancecheckout_subscription_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postfinancecheckout_subscription_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_postfinancecheckout_subscription_failed_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_postfinancecheckout_subscription_failed_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_postfinancecheckout_subscription_failed_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_postfinancecheckout_subscription_failed_renewal'"
