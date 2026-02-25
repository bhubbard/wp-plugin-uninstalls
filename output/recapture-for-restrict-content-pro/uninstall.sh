#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recapture_custom_recapture_host'
wp option delete 'recapture_custom_loader_url'
wp option delete 'recapture_api_key'
wp option delete 'recapture_authenticator_token'
wp option delete 'recapture_discount_code'
wp option delete 'recapture_is_exporting'
wp option delete 'recapture_rcp_exclude_renewal_carts'
wp option delete 'recapture_export_offset'

# Clear Cron Jobs
wp cron event delete 'recapture_run_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recapture_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recapture_missing_plugin_nag'"
