-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iafwmc_account_data', 'iafwmc_email_validation_keywords', 'iafwmc_email_validation_handling', 'iafwmc_email_detection_keywords', 'iafwmc_email_detection_handling', 'iafwmc_spam_detection_keywords', 'iafwmc_spam_detection_handling', 'iafwmc_delete_data_on_uninstall', 'iafwmc_error_notification', 'iafwmc_error_notification_email', 'iafwmc_error_notification_subject', 'iafwmc_request_key', 'iafwmc_session_key', 'iafwmc_session_plan', 'iafwmc_review_enabled', 'iafwmc_review_dismissed', 'iafwmc_review_remind_me_later', 'iafwmc_account_message', 'iafwmc_error_log_success', 'iafwmc_error_log_fail', 'iafwmc_settings_saved', 'iafwmc_license_fail', 'iafwmc_license_success', 'iafwmc_setup_message', 'iafwmc_auth_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

