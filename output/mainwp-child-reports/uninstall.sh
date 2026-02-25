#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mainwp_stream_network'
wp option delete 'wp_mainwp_stream'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connectors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_registered_connectors'"
wp option delete 'mainwp_child_reports_db'
wp option delete 'mainwp_child_branding_settings'
wp option delete 'wp_mainwp_stream_plugins_to_delete'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'wp_mainwp_stream_auto_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
