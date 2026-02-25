-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpnm_enable_user_registration_notification', 'wpnm_user_registration_email', 'wpnm_enable_password_change_notification', 'wpnm_password_change_email');

