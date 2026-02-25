#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cau_db_version'
wp option delete 'cau_redirectToWelcomeScreen'

# Clear Cron Jobs
wp cron event delete 'cau_set_schedule_mail'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_version_check'
wp cron event delete 'cau_custom_hooks_plugins'
wp cron event delete 'cau_custom_hooks_themes'
wp cron event delete 'cau_log_updater'
wp cron event delete 'cau_outdated_notifier'

