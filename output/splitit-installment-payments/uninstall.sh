#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_client_secret'"
wp option delete 'api_key'
wp option delete 'merchant_name'
wp option delete 'terminal_name'
wp option delete 'splitit_environment'
wp option delete 'splitit_logged_user_data'
wp option delete 'merchant_settings'
wp option delete 'splitit_last_activation_time'
wp option delete 'splitit_last_deactivation_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_merchant_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_terminal_id'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_code_verifier_%' OR option_name LIKE '_site_transient_splitit_code_verifier_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_id_token_%' OR option_name LIKE '_site_transient_splitit_id_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_merchants_list_%' OR option_name LIKE '_site_transient_splitit_merchants_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_terminals_list_%' OR option_name LIKE '_site_transient_splitit_terminals_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_credentials_list_%' OR option_name LIKE '_site_transient_splitit_credentials_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_access_token_%' OR option_name LIKE '_site_transient_splitit_access_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_splitit_cancelled_order_message_%' OR option_name LIKE '_site_transient_splitit_cancelled_order_message_%'"

# Clear Cron Jobs
wp cron event delete 'check_splitit_refund_status_daily'

