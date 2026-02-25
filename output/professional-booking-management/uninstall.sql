-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myprobooking_livekey', 'myprobooking_accesskey', 'myprobooking_previewurl', 'my_myprobooking_options', 'myprobooking_booking_plugin_version');

