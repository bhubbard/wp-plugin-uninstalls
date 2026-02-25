#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_queried'"
wp option delete 'ckwc_version'
wp option delete 'ck_code_verifier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed'"

# Clear Cron Jobs
wp cron event delete 'ckwc_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ckwc_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ckwc_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ckwc_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ckwc_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ckwc_purchase_data_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ckwc_purchase_data_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ckwc_purchase_data_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ckwc_purchase_data_id'"
