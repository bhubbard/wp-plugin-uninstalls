#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'wc_sendinblue_settings'
wp option delete 'woocommerce_new_order_settings'
wp option delete 'woocommerce_failed_order_settings'
wp option delete 'woocommerce_cancelled_order_settings'
wp option delete 'woocommerce_customer_on_hold_order_settings'
wp option delete 'woocommerce_customer_processing_order_settings'
wp option delete 'woocommerce_customer_refunded_order_settings'
wp option delete 'woocommerce_customer_completed_order_settings'
wp option delete 'woocommerce_customer_note_settings'
wp option delete 'woocommerce_customer_new_account_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ws_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ws_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ws_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ws_opt_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thankyou_action_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
