#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'summix_getmd_db_version'
wp option delete 'summix_getmd_frontend_view_enabled'
wp option delete 'summix_getmd_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_export_files_%' OR option_name LIKE '_site_transient_summix_getmd_export_files_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_export_progress_%' OR option_name LIKE '_site_transient_summix_getmd_export_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_media_errors_%' OR option_name LIKE '_site_transient_summix_getmd_media_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_export_single_content_%' OR option_name LIKE '_site_transient_summix_getmd_export_single_content_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_export_media_%' OR option_name LIKE '_site_transient_summix_getmd_export_media_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_summix_getmd_media_settings_%' OR option_name LIKE '_site_transient_summix_getmd_media_settings_%'"
wp transient delete 'summix_getmd_capabilities_cached'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'summix_getmd_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'summix_getmd_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'summix_getmd_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'summix_getmd_settings'"
