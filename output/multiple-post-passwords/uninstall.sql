-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpp_use_alternative_password_check', 'mpp_delete_used_passwords', 'mpp_used_passwords', 'mpp_password_expire_hours', 'mpp_used_pw_deletion_notification_email');

