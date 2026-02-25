#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woopos_credit_points_store_credit_enable'
wp option delete 'woopos_credit_points_reward_points_enable'
wp option delete 'woopos_credit_points_store_credit_message'
wp option delete 'woopos_credit_points_reward_points_zero_message'
wp option delete 'woopos_credit_points_reward_points_not_zero_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_account_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_account_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_account_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_account_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_account_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_account_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_account_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_account_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_account_points_redeemable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_account_points_redeemable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_account_points_redeemable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_account_points_redeemable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_account_points_redeemable_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_account_points_redeemable_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_account_points_redeemable_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_account_points_redeemable_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_credit_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_credit_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_credit_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_credit_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_points_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_points_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_points_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_points_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_credit_removed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_credit_removed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_credit_removed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_credit_removed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_points_removed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_points_removed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_points_removed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_points_removed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_recurring_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_recurring_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_recurring_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_recurring_payment_method'"
