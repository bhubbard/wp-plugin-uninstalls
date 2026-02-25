#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awcdp_general_settings'
wp option delete 'awcdp_advanced_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'awcdp_text_settings'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'awdp_fee_label'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_order_pay_endpoint'
wp option delete 'woocommerce_allow_bulk_remove_personal_data'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'awcdp_pys_pending_events'

# Clear Cron Jobs
wp cron event delete 'awcdp_pys_deferred_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awcdp_pys_purchase_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awcdp_pys_purchase_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awcdp_pys_purchase_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awcdp_pys_purchase_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awcdp_deposits_order_has_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awcdp_deposits_order_has_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awcdp_deposits_order_has_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awcdp_deposits_order_has_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awcdp_deposits_balance_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awcdp_deposits_balance_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awcdp_deposits_balance_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awcdp_deposits_balance_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awcdp_pys_full_payment_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awcdp_pys_full_payment_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awcdp_pys_full_payment_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awcdp_pys_full_payment_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awcdp_deposits_deposit_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awcdp_deposits_deposit_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awcdp_deposits_deposit_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awcdp_deposits_deposit_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awcdp_deposits_payment_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awcdp_deposits_payment_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awcdp_deposits_payment_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awcdp_deposits_payment_plan'"
