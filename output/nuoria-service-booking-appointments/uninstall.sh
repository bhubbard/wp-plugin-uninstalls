#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Nuoria_Service_Booking_Appointments_settings'
wp option delete 'Nuoria_Service_Booking_Appointments_db_version'
wp option delete 'Nuoria_Service_Booking_Appointments_version'

# Clear Cron Jobs
wp cron event delete 'Nuoria_Service_Booking_Appointments_send_reminders'
wp cron event delete 'Nuoria_Service_Booking_Appointments_cleanup_old_bookings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
