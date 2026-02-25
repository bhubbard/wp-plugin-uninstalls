#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_bkash_installed'
wp option delete 'wcwpbkash_installed'
wp option delete 'wcwpbkash_version'
wp option delete 'woocommerce_bkash_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'dc_bkash_token'
wp transient delete 'dc_bkash_token_data'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_bkash_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_bkash_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_bkash_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_bkash_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_bkash_refunded_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_bkash_refunded_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_bkash_refunded_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_bkash_refunded_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_bkash_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_bkash_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_bkash_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_bkash_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dc_bkash_refund_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dc_bkash_refund_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dc_bkash_refund_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dc_bkash_refund_charge'"
