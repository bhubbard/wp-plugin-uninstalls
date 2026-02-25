#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_order_status_rules_plugin_enabled'
wp option delete 'alg_wc_order_status_rules_use_action_scheduler'
wp option delete 'alg_wc_order_status_rules_action_scheduler_interval'
wp option delete 'alg_wc_order_status_rules_meta_box_screen'
wp option delete 'alg_wc_order_status_rules_compatibility_doctreat'
wp option delete 'alg_wc_order_status_rules_allow_url'
wp option delete 'alg_wc_order_status_rules_debug'
wp option delete 'alg_wc_order_status_rules_status_functions'
wp option delete 'alg_wc_order_status_rules_status_change_hooks'
wp option delete 'alg_wc_order_status_rules_hooks'
wp option delete 'alg_wc_order_status_rules_no_history'
wp option delete 'alg_wc_order_status_rules_run_now'
wp option delete 'alg_wc_order_status_rules_enabled'
wp option delete 'alg_wc_order_status_rules_from'
wp option delete 'alg_wc_order_status_rules_to'
wp option delete 'alg_wc_order_status_rules_time_trigger'
wp option delete 'alg_wc_order_status_rules_time_trigger_unit'
wp option delete 'alg_wc_order_status_rules_skip_days'
wp option delete 'alg_wc_order_status_rules_skip_dates'
wp option delete 'alg_wc_order_status_rules_title'
wp option delete 'alg_wc_order_status_rules_disabled_conditions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_order_status_rules_%'"
wp option delete 'alg_wc_order_status_rules_non_matching'
wp option delete 'alg_wc_order_status_rules_process_rules_time_run'
wp option delete 'alg_wc_order_status_rules_wc_get_orders_max_orders'
wp option delete 'alg_wc_order_status_rules_wc_get_orders_args'
wp option delete 'alg_wc_order_status_rules_use_wp_cron'
wp option delete 'alg_wc_order_status_rules_process_rules_time_schedule'
wp option delete 'alg_wc_order_status_rules_wp_cron_schedule'
wp option delete 'alg_wc_order_status_rules_default_order_status'
wp option delete 'alg_wc_osr_my_account_orders_status_history_enabled'
wp option delete 'alg_wc_osr_my_account_orders_status_history_position'
wp option delete 'alg_wc_osr_my_account_orders_status_history_column_title'
wp option delete 'alg_wc_osr_my_account_orders_status_history_templates'
wp option delete 'alg_wc_osr_my_account_orders_status_history_reverse'
wp option delete 'alg_wc_order_status_rules_bacs_process_payment_order_status'
wp option delete 'alg_wc_order_status_rules_cheque_process_payment_order_status'
wp option delete 'alg_wc_order_status_rules_cod_process_payment_order_status'
wp option delete 'alg_wc_order_status_rules_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'alg_wc_order_status_rules_process_rules'

