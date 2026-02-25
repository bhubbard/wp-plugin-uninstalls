#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grw_notice_type'
wp option delete 'grw_notice_msg'
wp option delete 'grw_rate_us'
wp option delete 'grw_activation_time'
wp option delete 'grw_rev_notice_hide'
wp option delete 'rplg_rev_notice_show'
wp option delete 'grw_version'
wp option delete 'grw_is_multisite'
wp option delete 'grw_auth_code'
wp option delete 'grw_revupd_cron'
wp option delete 'grw_active'
wp option delete 'grw_google_api_key'
wp option delete 'grw_debug_mode'
wp option delete 'grw_last_error'
wp option delete 'grw_demand_assets'
wp option delete 'grw_async_css'
wp option delete 'grw_rucss_safelist'
wp option delete 'grw_inlinecss_off'
wp option delete 'widget_grw_widget'
wp option delete 'grw_feed_ids'
wp option delete 'grw_freq_revs_upd'
wp option delete 'grw_gpa_old'
wp option delete 'grw_do_activation'
wp option delete 'grw_revupd_cron_timeout'
wp option delete 'grw_revupd_cron_log'
wp option delete 'grw_save_log'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_reviews' OR option_name LIKE '_site_transient_%_reviews'"

# Clear Cron Jobs
wp cron event delete 'grw_revupd_schedule'

