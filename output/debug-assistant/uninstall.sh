#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'show_on_front '
wp option delete 'imlt_track_user'
wp option delete 'imtl_test_speed_enabled'

# Clear Cron Jobs
wp cron event delete 'imlt_admin_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'set_cron_time_tmp_admin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'set_cron_time_tmp_admin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'set_cron_time_tmp_admin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'set_cron_time_tmp_admin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmp_admin_psw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmp_admin_psw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmp_admin_psw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmp_admin_psw'"
