#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_network_stats_version'
wp option delete 'network_stats_db_version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'ns_blog_list'
wp transient delete 'ns_active_plugins'
wp transient delete 'ns_active_themes'
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'cron_refresh_user_stats'
wp cron event delete 'cron_refresh_plugin_stats'
wp cron event delete 'cron_refresh_theme_stats'
wp cron event delete 'cron_refresh_site_stats'
wp cron event delete 'cron_send_notification_email'

