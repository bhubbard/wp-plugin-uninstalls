#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nicen_make_plugin_save_result'
wp option delete 'nicen_last_auto_publish'
wp option delete 'nicen_last_batch'
wp option delete 'nicen_make_publish_date_start'
wp option delete 'nicen_make_publish_date_end'
wp option delete 'nicen_make_publish_time_start'
wp option delete 'nicen_make_publish_time_end'
wp option delete 'nicen_make_plugin_interval'
wp option delete 'nicen_make_plugin_order'
wp option delete 'nicen_make_plugin_publish_local'
wp option delete 'nicen_make_publish_date'
wp option delete 'nicen_make_plugin_publish_num'
wp option delete 'nicen_make_publish_type'
wp option delete 'nicen_make_plugin_auto_publish'
wp option delete 'nicen_make_publish_white'
wp option delete 'nicen_make_plugin_record_log'
wp option delete 'nicen_make_plugin_adjust'
wp option delete 'nicen_make_plugin_private'
wp option delete 'nicen_plugin_error_log'

# Clear Cron Jobs
wp cron event delete 'nicen_plugin_auto_publish'

