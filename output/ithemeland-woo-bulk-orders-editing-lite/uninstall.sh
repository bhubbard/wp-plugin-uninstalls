#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wobel-version'
wp option delete 'wobe_update_table_log'
wp option delete 'wobe_meta_fields'
wp option delete 'wobe_column_fields'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'wobe_get_orders_otb'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again'"
wp option delete 'itbbc_scheduler_version'
wp option delete 'wobel_some_setting'
wp option delete 'wobel_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent'"
wp option delete 'ithemeland_activation_email'
wp option delete 'wobel_onboarding'
wp option delete 'wobel_opt_in'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

