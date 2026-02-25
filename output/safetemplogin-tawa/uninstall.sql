-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safetemp_restricted_actions', 'safetemp_expiration_behavior', 'safetemp_log_only_mode', 'safetemp_email_notify_actor', 'safetemp_notification_emails', 'safetemp_remove_data_on_uninstall', 'safetemp_blocked_action_message');
DELETE FROM wp_options WHERE option_name LIKE 'safetemp_pwd_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_safetemp_temporary_password', '_safetemp_expires_at', '_safetemp_notes', '_safetemp_created_by', '_safetemp_allowed_caps');
DELETE FROM wp_usermeta WHERE meta_key IN ('_safetemp_temporary_password', '_safetemp_expires_at', '_safetemp_notes', '_safetemp_created_by', '_safetemp_allowed_caps');
DELETE FROM wp_termmeta WHERE meta_key IN ('_safetemp_temporary_password', '_safetemp_expires_at', '_safetemp_notes', '_safetemp_created_by', '_safetemp_allowed_caps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_safetemp_temporary_password', '_safetemp_expires_at', '_safetemp_notes', '_safetemp_created_by', '_safetemp_allowed_caps');

