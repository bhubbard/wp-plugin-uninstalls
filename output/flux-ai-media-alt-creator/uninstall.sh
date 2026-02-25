#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flux_ai_alt_creator_settings'
wp option delete 'flux-plugins_common_options'

# Delete Transients
wp transient delete 'flux_ai_media_alt_creator_activation_redirect'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'flux_ai_media_alt_creator_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flux_ai_alt_creator_scan_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flux_ai_alt_creator_scan_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flux_ai_alt_creator_scan_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flux_ai_alt_creator_scan_data'"
