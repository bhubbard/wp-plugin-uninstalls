#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_pp_payment_email'
wp option delete 'paypal_payment_currency'
wp option delete 'wp_pp_payment_subject'
wp option delete 'wp_pp_payment_item1'
wp option delete 'wp_pp_payment_value1'
wp option delete 'wp_pp_payment_item2'
wp option delete 'wp_pp_payment_value2'
wp option delete 'wp_pp_payment_item3'
wp option delete 'wp_pp_payment_value3'
wp option delete 'wp_paypal_widget_title_name'
wp option delete 'payment_button_type'
wp option delete 'wp_pp_show_other_amount'
wp option delete 'wp_pp_show_ref_box'
wp option delete 'wp_pp_ref_title'
wp option delete 'wp_pp_return_url'
wp option delete 'wp_pp_cancel_url'
wp option delete 'wpapp_collect_shipping_address'
wp option delete 'wpapp_enable_debug_logging'
wp option delete 'wp_pp_payment_item4'
wp option delete 'wp_pp_payment_value4'
wp option delete 'wp_pp_payment_item5'
wp option delete 'wp_pp_payment_value5'
wp option delete 'wp_pp_payment_item6'
wp option delete 'wp_pp_payment_value6'
wp option delete 'cart_payment_currency'
wp option delete 'wpapp_logfile_suffix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_subscription_plan_mode'"
