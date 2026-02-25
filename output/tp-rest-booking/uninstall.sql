-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tprb_general_options', 'restaurant_booking_settings', 'tprb_notifications_options', 'tprb_jwt_secret_key', 'tprb_security_options', 'tprb_admin_email', 'tprb_notify_admin', 'tprb_notify_client', 'tprb_email_subject', 'tprb_email_template', 'restaurant_booking_weekly_availability');

