#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fwsbs_trash_pending_subscriptions'
wp option delete 'fwsbs_trash_cancelled_subscriptions'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'fwsbs_enabled'
wp option delete 'fwsbs_allow_customer_cancel_subscription'
wp option delete 'woocommerce_foloosi_settings'
wp option delete 'foloosi_recently_activated'
wp option delete 'foloosi_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Clear Cron Jobs
wp cron event delete 'fwsbs_renew_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fwsbs_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fwsbs_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fwsbs_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fwsbs_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fwsbs_price_is_per'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fwsbs_price_is_per'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fwsbs_price_is_per'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fwsbs_price_is_per'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fwsbs_price_time_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fwsbs_price_time_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fwsbs_price_time_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fwsbs_price_time_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fwsbs_max_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fwsbs_max_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fwsbs_max_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fwsbs_max_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fwsbs_setup_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fwsbs_setup_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fwsbs_setup_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fwsbs_setup_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'renew_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'renew_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'renew_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'renew_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_renew_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_renew_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_renew_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_renew_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_trial_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_trial_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_trial_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_trial_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_downgrade_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_downgrade_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_downgrade_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_downgrade_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'fwsbs_upgrade_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'fwsbs_upgrade_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'fwsbs_upgrade_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fwsbs_upgrade_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_ids'"
