#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modula-checks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'modula_ai_optimizer_status_%'"
wp option delete 'modula_troubleshooting_option'
wp option delete 'modula_defaults_gallery'
wp option delete 'modula_defaults_album'
wp option delete 'modula_custom_permissions'
wp option delete 'modula_pro_license_key'
wp option delete 'use_modula_ai'
wp option delete 'imageseo_api_key'
wp option delete 'modula_ai_api_key'
wp option delete 'fusion_options'
wp option delete 'jetpack_active_modules'
wp option delete 'a3_lazy_load_global_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'modula_image_licensing_option'
wp option delete 'modula_ai_language'
wp option delete 'modula_image_licensing_option '
wp option delete 'modula_importer'
wp option delete 'photoblocks_galleries'
wp option delete 'modula_settings'
wp option delete 'modula_telemetry_registration_sent'
wp option delete 'modula_telemetry_initial_state_sent'
wp option delete 'modula_telemetry_initial_settings_sent'
wp option delete 'wpchill_telemetry_event_queue'
wp option delete 'wpchill_telemetry_registration_sent'
wp option delete 'modula_telemetry_opted_out'
wp option delete 'modula_telemetry_install_uuid'
wp option delete 'siteorigin_panels_settings'
wp option delete 'modula-rate-time'

# Delete Transients
wp transient delete 'wpchill_all_partners'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wpchill_telemetry_weekly_report'
wp cron event delete 'wpchill_telemetry_process_queue'
wp cron event delete 'wpchill_telemetry_send_batch'
wp cron event delete 'wpchill_telemetry_state_send'
wp cron event delete 'wpchill_telemetry_daily_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_modula_ai_report'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_modula_ai_report'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_modula_ai_report'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_modula_ai_report'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_modula_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_modula_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_modula_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_modula_original'"
