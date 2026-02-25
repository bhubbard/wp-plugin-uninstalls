#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockspare_redirect_to_welcome'
wp option delete 'blockspare_setup_notice_start_time'
wp option delete 'blockspare_upgrade_notice_start_time'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'awpa_author_metabox_integration'
wp option delete 'blockspare_activation_date'
wp option delete 'blockspare_current_version_installed'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice_dismiss_temporary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_setup_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_setup_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_setup_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_setup_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_setup_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_setup_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_setup_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_setup_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss_temporary_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_upgrade_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpma_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_templates_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blockspare_favorite_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blockspare_favorite_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blockspare_favorite_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blockspare_favorite_layouts'"
