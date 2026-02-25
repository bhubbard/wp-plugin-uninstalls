#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'vendi_plugin_health_check'

# Clear Cron Jobs
wp cron event delete 'vendi_plugin_health_check'
wp cron event delete 'vendi_plugin_health_check_batch'
wp cron event delete 'vendi_plugin_health_watcher'

