-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'event_time_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sinqwell_event_door_time', '_sinqwell_event_date_start', '_sinqwell_event_time_tbd', '_sinqwell_event_venue', '_sinqwell_event_ticket_price', '_sinqwell_event_date_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sinqwell_event_door_time', '_sinqwell_event_date_start', '_sinqwell_event_time_tbd', '_sinqwell_event_venue', '_sinqwell_event_ticket_price', '_sinqwell_event_date_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sinqwell_event_door_time', '_sinqwell_event_date_start', '_sinqwell_event_time_tbd', '_sinqwell_event_venue', '_sinqwell_event_ticket_price', '_sinqwell_event_date_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sinqwell_event_door_time', '_sinqwell_event_date_start', '_sinqwell_event_time_tbd', '_sinqwell_event_venue', '_sinqwell_event_ticket_price', '_sinqwell_event_date_end');

