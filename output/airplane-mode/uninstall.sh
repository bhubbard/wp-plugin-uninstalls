#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'airplane-mode'

# Delete Transients
wp transient delete 'wporg_theme_feature_list'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_maybe_auto_update'

