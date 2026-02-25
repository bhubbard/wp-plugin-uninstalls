-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cc_travel_options', 'cc-framework-transient', 'cc-metabox-transient', 'cc-taxonomy-transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_booking_info', '_tour_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_booking_info', '_tour_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_booking_info', '_tour_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_booking_info', '_tour_details');

