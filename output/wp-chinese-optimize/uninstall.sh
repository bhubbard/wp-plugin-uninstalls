#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'XH_WP_OPTIMIZE_ALL'
wp option delete 'XH_WP_OPTIMIZE_HEADER'
wp option delete 'XH_WP_OPTIMIZE_FOOTER'
wp option delete 'XH_WP_OPTIMIZE_POST'

# Clear Cron Jobs
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_maybe_auto_update'

