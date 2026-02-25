#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyforms_forms'
wp option delete 'buddyforms_options'
wp option delete 'buddyforms_options_old'
wp option delete 'buddyforms_version'
wp option delete 'buddyforms_preview_page'
wp option delete 'buddyforms_submissions_page'
wp option delete 'buddyforms_first_path_after_install'
wp option delete 'buddyforms_gdpr'
wp option delete 'close_submission_default_page_notification'
wp option delete 'buddyforms_layout_options'
wp option delete 'buddyforms_posttypes_default'
wp option delete 'buddyforms_password_strength_settings'
wp option delete 'buddyforms_registration_page'
wp option delete 'buddyforms_registration_form'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete '_buddyforms_welcome_screen_activation_redirect'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'buddyforms_get_users_pending_for_activation'

# Clear Cron Jobs
wp cron event delete 'wp_scheduled_auto_draft_delete'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddyforms_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bf_form_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bf_registration_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bf_registration_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bf_registration_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bf_registration_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bf_pw_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bf_pw_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bf_pw_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bf_pw_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'buddyforms_browser_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'buddyforms_browser_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'buddyforms_browser_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'buddyforms_browser_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bf_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bf_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bf_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bf_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_restored_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_restored_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_restored_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_restored_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bf_activation_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bf_activation_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bf_activation_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bf_activation_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subject'"
