#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'paytiko_enable_auto_cleaner'
wp option delete 'paytiko_interval_clearing'
wp option delete 'paytiko_auto_cleaner_first_init'
wp option delete 'paytiko_enable_subscription'
wp option delete 'paytiko_plan_name'
wp option delete 'paytiko_billing_interval'
wp option delete 'paytiko_interval_count'
wp option delete 'woocommerce_dummy_settings'
wp option delete 'woocommerce_paytiko_gateway_settings'
wp option delete 'paytiko_payout_table_created'

# Clear Cron Jobs
wp cron event delete 'paytiko_auto_cleaner_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paytiko_tab_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paytiko_tab_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paytiko_tab_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paytiko_tab_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paytiko_transact_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paytiko_transact_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paytiko_transact_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paytiko_transact_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_processor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_processor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_processor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_processor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
