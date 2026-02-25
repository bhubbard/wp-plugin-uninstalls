-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_EventVenueID', '_venuecheck_event_offset_start', '_venuecheck_event_offset_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('_EventVenueID', '_venuecheck_event_offset_start', '_venuecheck_event_offset_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('_EventVenueID', '_venuecheck_event_offset_start', '_venuecheck_event_offset_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_EventVenueID', '_venuecheck_event_offset_start', '_venuecheck_event_offset_end');

