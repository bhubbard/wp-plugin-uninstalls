#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mycred_eventsmanager_gateway_prefs'
wp option delete 'dbem_multiple_bookings'
wp option delete 'dbem_bookings_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_manual_approval'"
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_anonymous'
wp option delete 'dbem_bookings_registration_disable'
wp option delete 'dbem_bookings_currency_decimal_point'
wp option delete 'dbem_bookings_currency_thousands_sep'
wp option delete 'dbem_bookings_currency_format'
wp option delete 'em_mycred_checkout_option_name'
wp option delete 'em_mycred_checkout_booking_feedback'
wp option delete 'em_mycred_checkout_booking_feedback_free'
wp option delete 'em_mycred_checkout_button'
wp option delete 'em_mycred_checkout_booking_feedback_completed'
wp option delete 'em_mycred_checkout_booking_feedback_cancelled'
wp option delete 'em_mycred_checkout_inc_tax'
wp option delete 'em_mycred_checkout_reserve_pending'
wp option delete 'em_offline_booking_feedback'
wp option delete 'em_mycred_elements_option_name'
wp option delete 'em_mycred_elements_booking_feedback'
wp option delete 'em_mycred_elements_booking_feedback_free'
wp option delete 'em_mycred_elements_booking_feedback_completed'
wp option delete 'em_mycred_elements_booking_feedback_cancelled'
wp option delete 'em_mycred_elements_inc_tax'
wp option delete 'em_mycred_elements_reserve_pending'
wp option delete 'emp_mycred_version'
wp option delete 'em_mycred_checkout_api'
wp option delete 'em_mycred_elements_api'
wp option delete 'em_mycred_elements_mode'
wp option delete 'em_mycred_checkout_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
