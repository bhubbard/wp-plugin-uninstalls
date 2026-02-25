#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_stream_network'
wp option delete 'wp_stream'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connectors'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_registered_connectors'"
wp option delete 'wp_stream_plugins_to_delete'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wp_stream_auto_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alert_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alert_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alert_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alert_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alert_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alert_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alert_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alert_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%columnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
