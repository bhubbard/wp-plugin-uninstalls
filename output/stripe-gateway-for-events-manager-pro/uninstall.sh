#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_publishable_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_test_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_live_publishable_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_live_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_debug'"
wp option delete 'dbem_multiple_bookings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_manual_approval'"
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_anonymous'
wp option delete 'dbem_bookings_registration_disable'
wp option delete 'em_emp_stripe_booking_feedback'
wp option delete 'em_emp_stripe_booking_feedback_free'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_form'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header_email_customer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_header_email_receipt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_footer_email_receipt'"
wp option delete 'dbem_bookings_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_booking_feedback'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_booking_feedback_free'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'em_%'"

