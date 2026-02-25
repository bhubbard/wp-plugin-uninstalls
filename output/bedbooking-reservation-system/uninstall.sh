#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bed_booking_access_token'

# Delete Transients
wp transient delete 'bed_booking_calendar_id'
wp transient delete 'bed_booking_user'
wp transient delete 'bed_booking_object'
wp transient delete 'bed_booking_widget_settings'
wp transient delete 'bed_booking_license'
wp transient delete 'bed_booking_rooms'

