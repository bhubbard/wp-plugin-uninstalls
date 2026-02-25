-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iafwhc_account_data', 'iafwhc_delete_data_on_uninstall', 'iafwhc_error_notification', 'iafwhc_error_notification_email', 'iafwhc_error_notification_subject', 'iafwhc_request_key', 'iafwhc_session_key', 'iafwhc_session_plan', 'iafwhc_review_enabled', 'iafwhc_review_dismissed', 'iafwhc_review_remind_me_later', 'iafwhc_account_message', 'iafwhc_error_log_success', 'iafwhc_error_log_fail', 'iafwhc_settings_saved', 'iafwhc_license_fail', 'iafwhc_license_success', 'iafwhc_setup_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

