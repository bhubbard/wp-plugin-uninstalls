-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dex_appointments_data', 'calendar_language', 'calendar_dateformat', 'calendar_militarytime', 'calendar_weekday', 'calendar_mindate', 'calendar_maxdate', 'calendar_pages', 'enable_paypal', 'paypal_email', 'request_cost', 'paypal_product_name', 'currency', 'url_ok', 'url_cancel', 'paypal_language', 'notification_from_email', 'notification_destination_email', 'email_subject_confirmation_to_user', 'email_confirmation_to_user', 'email_subject_notification_to_admin', 'email_notification_to_admin');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';

