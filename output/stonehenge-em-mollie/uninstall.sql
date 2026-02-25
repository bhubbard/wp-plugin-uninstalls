-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('em_mollie_api_key', 'dbem_multiple_bookings', 'dbem_date_format', 'em_mollie_description', 'mollie_activated_methods', 'em_mollie_form', 'em_mollie_show_methods', 'dbem_bookings_currency', 'em_mollie_message_redirect', 'em_mollie_message_free', 'em_mollie_return_page', 'dbem_events_page', 'dbem_booking_feedback', 'dbem_booking_feedback_error', 'dbem_booking_feedback_pending', 'em_mollie_status_text', 'em_mollie_show_status', 'em_mollie_show_feedback', 'em_mollie_send_cancel_mail');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

