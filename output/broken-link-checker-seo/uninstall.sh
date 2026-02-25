#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_localized'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_blc_not_connected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_blc_not_connected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_blc_not_connected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_blc_not_connected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_blc_plugin_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_blc_plugin_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_blc_plugin_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_blc_plugin_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_blc_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_blc_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_blc_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_blc_notification_plugin_review_dismissed'"
