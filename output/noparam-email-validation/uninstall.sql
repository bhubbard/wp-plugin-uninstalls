-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('noparam_api_key', 'noparam_cf7_enabled', 'noparam_wpforms_enabled', 'noparam_registration_enabled', 'noparam_comments_enabled', 'noparam_invalid_email_message', 'noparam_disposable_email_message', 'noparam_role_email_message', 'noparam_suggestion_message', 'noparam_disposable_message', 'noparam_role_based_message', 'noparam_requests_left', 'noparam_version', 'noparam_quota_status');

