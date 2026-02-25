-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_multiple_bookings', 'dbem_bookings_approval', 'dbem_bookings_anonymous', 'dbem_bookings_registration_disable', 'em_emp_stripe_booking_feedback', 'em_emp_stripe_booking_feedback_free', 'dbem_bookings_currency');
DELETE FROM wp_options WHERE option_name LIKE '%_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_test_publishable_key';
DELETE FROM wp_options WHERE option_name LIKE '%_test_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_live_publishable_key';
DELETE FROM wp_options WHERE option_name LIKE '%_live_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';
DELETE FROM wp_options WHERE option_name LIKE '%_manual_approval';
DELETE FROM wp_options WHERE option_name LIKE '%_form';
DELETE FROM wp_options WHERE option_name LIKE '%_header_email_customer';
DELETE FROM wp_options WHERE option_name LIKE '%_header_email_receipt';
DELETE FROM wp_options WHERE option_name LIKE '%_footer_email_receipt';
DELETE FROM wp_options WHERE option_name LIKE '%_booking_feedback';
DELETE FROM wp_options WHERE option_name LIKE '%_booking_feedback_free';
DELETE FROM wp_options WHERE option_name LIKE 'em_%';

