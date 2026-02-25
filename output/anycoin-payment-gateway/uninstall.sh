#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'anycoin_db_check'
wp option delete 'woocommerce_anycoin_payment_settings'
wp option delete 'zano_payment_db_version'
wp option delete 'woocommerce_zano_payment_settings'
wp option delete 'cron'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'anycoin_last_status_update'
wp transient delete 'zano_last_status_update'

# Clear Cron Jobs
wp cron event delete 'anycoin_cleanup_expired_payments'
wp cron event delete 'anycoin_monitor_payments'
wp cron event delete 'anycoin_check_transactions'
wp cron event delete 'wp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anycoin_selected_asset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anycoin_selected_asset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anycoin_selected_asset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anycoin_selected_asset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anycoin_asset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anycoin_asset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anycoin_asset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anycoin_asset_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anycoin_asset_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anycoin_asset_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anycoin_asset_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anycoin_asset_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anycoin_verification_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anycoin_verification_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anycoin_verification_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anycoin_verification_attempts'"
