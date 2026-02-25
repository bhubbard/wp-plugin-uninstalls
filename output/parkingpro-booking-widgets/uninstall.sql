-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('parkingpro_booking_widgets_filter_services', 'parkingpro_booking_widgets_myparkingpro_url', 'parkingpro_booking_widgets_remember_widget_fields', 'parkingpro_booking_widgets_affiliate_tracking', 'parkingpro_booking_widgets_culture', 'parkingpro_booking_widgets_google_analytics_id');

