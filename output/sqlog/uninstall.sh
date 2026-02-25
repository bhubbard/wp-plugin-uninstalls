#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sqlog_install'
wp option delete 'sqlog_install_date'
wp option delete 'sqlog_uninstall_date'
wp option delete 'sqlog_enabled'
wp option delete 'sqlog_purge_interval'
wp option delete 'sqlog_plugin_version'
wp option delete 'sqlog_settings_update'

# Clear Cron Jobs
wp cron event delete 'sqlog_cron_process_purge_logs'

