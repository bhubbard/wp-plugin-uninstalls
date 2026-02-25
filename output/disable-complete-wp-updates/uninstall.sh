#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_maybe_auto_update'

