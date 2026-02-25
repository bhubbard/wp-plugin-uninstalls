#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_auto_updater_history_table_version'
wp option delete 'auto_update_core_major'

# Delete Transients
wp transient delete 'wp_auto_updater/history_table/updated'
wp transient delete 'wp_auto_updater/history_table/created'
wp transient delete 'wp_auto_updater/upgraded_version'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'

