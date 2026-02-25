#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluent_boards_modules'
wp option delete '_fluent_boards_db_version'
wp option delete 'siteUrl'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
