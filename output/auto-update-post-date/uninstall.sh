#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmaupd_settings_all_options'
wp option delete 'tmaupd_plugin_mode_radio'
wp option delete 'tmaupd_post_types_check'
wp option delete 'tmaupd_post_dates_update'
wp option delete 'tmaupd_manual_date'
wp option delete 'tmaupd_auto_mode_period'
wp option delete 'tmaupd_keep_log'
wp option delete 'tmaupd_post_filter_mode'
wp option delete 'tmaupd_post_filter_mode_status'
wp option delete 'tmaupd_filter_ind_pid'
wp option delete 'tmaupd_filter_tax_terms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tmaupd_cpt_%'"
wp option delete 'tmaupd_manual_datetime'
wp option delete 'tmaupd_auto_mode_freq'
wp option delete 'tmaupd_auto_mode_offset_mode'
wp option delete 'tmaupd_auto_mode_offset_value'
wp option delete 'tmaupd_auto_mode_offset_unit'

# Clear Cron Jobs
wp cron event delete 'tmaupd_cron_job_action'

