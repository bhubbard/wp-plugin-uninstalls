-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddyforms_forms', 'buddyforms_options', 'buddyforms_options_old', 'buddyforms_version', 'buddyforms_preview_page', 'buddyforms_submissions_page', 'buddyforms_first_path_after_install', 'buddyforms_gdpr', 'close_submission_default_page_notification', 'buddyforms_layout_options', 'buddyforms_posttypes_default', 'buddyforms_password_strength_settings', 'buddyforms_registration_page', 'buddyforms_registration_form', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_buddyforms_welcome_screen_activation_redirect', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'buddyforms_get_users_pending_for_activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_buddyforms_options', '_bf_form_slug', '_bf_registration_user_id', 'bf_pw_redirect_url', 'buddyforms_browser_user_data', '_bf_user_data', '_post_restored_from', 'has_to_be_activated', 'bf_activation_link', 'subject');
DELETE FROM wp_usermeta WHERE meta_key IN ('_buddyforms_options', '_bf_form_slug', '_bf_registration_user_id', 'bf_pw_redirect_url', 'buddyforms_browser_user_data', '_bf_user_data', '_post_restored_from', 'has_to_be_activated', 'bf_activation_link', 'subject');
DELETE FROM wp_termmeta WHERE meta_key IN ('_buddyforms_options', '_bf_form_slug', '_bf_registration_user_id', 'bf_pw_redirect_url', 'buddyforms_browser_user_data', '_bf_user_data', '_post_restored_from', 'has_to_be_activated', 'bf_activation_link', 'subject');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_buddyforms_options', '_bf_form_slug', '_bf_registration_user_id', 'bf_pw_redirect_url', 'buddyforms_browser_user_data', '_bf_user_data', '_post_restored_from', 'has_to_be_activated', 'bf_activation_link', 'subject');

