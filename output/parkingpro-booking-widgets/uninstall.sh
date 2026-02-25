#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parkingpro_booking_widgets_filter_services'
wp option delete 'parkingpro_booking_widgets_myparkingpro_url'
wp option delete 'parkingpro_booking_widgets_remember_widget_fields'
wp option delete 'parkingpro_booking_widgets_affiliate_tracking'
wp option delete 'parkingpro_booking_widgets_culture'
wp option delete 'parkingpro_booking_widgets_google_analytics_id'

