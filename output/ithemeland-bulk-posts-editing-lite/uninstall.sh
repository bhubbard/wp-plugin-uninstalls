#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbel-version'
wp option delete 'wpbe_update_table_log'
wp option delete 'it_black_friday_banner_dismissed'
wp option delete 'wpbe_active_post_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again'"
wp option delete 'itbbc_scheduler_version'
wp option delete 'wpbel_some_setting'
wp option delete 'wpbel_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent'"
wp option delete 'ithemeland_activation_email'
wp option delete 'wpbel_onboarding'
wp option delete 'wpbel_opt_in'
wp option delete 'wpbe_active_count_undo'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

