-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iafwzdesk_account_data', 'iafwzdesk_email_validation_keywords', 'iafwzdesk_email_validation_handling', 'iafwzdesk_email_detection_keywords', 'iafwzdesk_email_detection_handling', 'iafwzdesk_spam_detection_keywords', 'iafwzdesk_spam_detection_handling', 'iafwzdesk_delete_data_on_uninstall', 'iafwzdesk_error_notification', 'iafwzdesk_error_notification_email', 'iafwzdesk_error_notification_subject', 'iafwzdesk_request_key', 'iafwzdesk_session_key', 'iafwzdesk_session_plan', 'iafwzdesk_review_enabled', 'iafwzdesk_review_dismissed', 'iafwzdesk_review_remind_me_later', 'iafwzdesk_account_message', 'iafwzdesk_error_log_success', 'iafwzdesk_error_log_fail', 'iafwzdesk_settings_saved', 'iafwzdesk_license_fail', 'iafwzdesk_license_success', 'iafwzdesk_setup_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

