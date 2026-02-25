#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logify_wp_object_subtypes_set'
wp option delete 'logify_wp_enable_notes'
wp option delete 'logify_wp_db_version'
wp option delete 'logify_wp_delete_on_uninstall'
wp option delete 'logify_wp_roles_to_track'
wp option delete 'logify_wp_roles_with_access'
wp option delete 'logify_wp_users_with_access'
wp option delete 'logify_wp_show_in_admin_bar'
wp option delete 'logify_wp_keep_period_quantity'
wp option delete 'logify_wp_keep_period_units'
wp option delete 'logify_wp_keep_period_errors'
wp option delete 'logify_wp_php_error_types'
wp option delete 'logify_wp_comment_tracking'
wp option delete 'logify_wp_capture_start_time'
wp option delete 'logify_wp_plugin_versions'
wp option delete 'logify_wp_theme_versions'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'logify_wp_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_comments_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
