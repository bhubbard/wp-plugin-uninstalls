#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'em_mollie_api_key'
wp option delete 'dbem_multiple_bookings'
wp option delete 'dbem_date_format'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'em_mollie_description'
wp option delete 'mollie_activated_methods'
wp option delete 'em_mollie_form'
wp option delete 'em_mollie_show_methods'
wp option delete 'dbem_bookings_currency'
wp option delete 'em_mollie_message_redirect'
wp option delete 'em_mollie_message_free'
wp option delete 'em_mollie_return_page'
wp option delete 'dbem_events_page'
wp option delete 'dbem_booking_feedback'
wp option delete 'dbem_booking_feedback_error'
wp option delete 'dbem_booking_feedback_pending'
wp option delete 'em_mollie_status_text'
wp option delete 'em_mollie_show_status'
wp option delete 'em_mollie_show_feedback'
wp option delete 'em_mollie_send_cancel_mail'

