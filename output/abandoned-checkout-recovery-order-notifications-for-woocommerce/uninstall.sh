#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intrkt_refresh_call_retry_current_attempt'
wp option delete 'intrkt_all_db_tables_created'
wp option delete 'intrkt_country_code_selection'
wp option delete 'intrkt_country_code'
wp option delete 'intrkt_integration_status'
wp option delete 'intrkt_public_api_token_access_token'
wp option delete 'intrkt_public_api_token_expires_in'
wp option delete 'intrkt_public_api_token_created_at'
wp option delete 'intrkt_public_api_token_refresh_token'
wp option delete 'intrkt_public_api_token_org_id'
wp option delete 'intrkt_public_api_expiry_datetime'
wp option delete 'intrkt_log_data'
wp option delete 'intrkt_general-cod-confirmation'
wp option delete 'intrkt_update_db_value'
wp option delete 'intrkt_gdpr_status'
wp option delete 'intrkt_cron_run_time'
wp option delete 'INTRKT_ca_all_db_tables_created'
wp option delete 'intrkt_global_param'
wp option delete 'intrkt_excludes_orders'
wp option delete 'intrkt_ca_ignore_users'
wp option delete 'intrkt_gdpr_message'
wp option delete 'intrkt_abandon_cart_cut_off_api_time'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'order_data_%'"

# Clear Cron Jobs
wp cron event delete 'intrkt_refresh_api'
wp cron event delete 'intrkt_refresh_call_retry'
wp cron event delete 'intrkt_abandon_update_order_status_action'

