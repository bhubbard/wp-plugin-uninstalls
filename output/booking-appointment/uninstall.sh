#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booking_appointment_email_data'
wp option delete 'booking_appointment_settings_data'
wp option delete 'booking_appointment_configuration'
wp option delete 'booking_appointment_payments_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_bookings_tablecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_bookings_tablecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_bookings_tablecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_bookings_tablecolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managetoplevel_page_holidays_tablecolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managetoplevel_page_holidays_tablecolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managetoplevel_page_holidays_tablecolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managetoplevel_page_holidays_tablecolumnshidden'"
