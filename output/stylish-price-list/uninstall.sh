#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spl_license_return'
wp option delete 'stylishpl_license_key'
wp option delete 'spl_extra_settings'
wp option delete 'spllk_opt'
wp option delete 'act_ser_conn_refused'
wp option delete 'spl_save_count'
wp option delete 'spl_feedback_invoke'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'spl_cats_%'"
wp option delete 'df_spl_emailsender'
wp option delete 'df_spl_notifications'
wp option delete 'stylish_price_list_version'
wp option delete 'googlefonts_options'
wp option delete 'wp_google_fonts_global_notification'

# Clear Cron Jobs
wp cron event delete 'spl_stats_event'

