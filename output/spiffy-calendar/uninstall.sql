-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spiffy_calendar_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spiffy_event_recur_multiplier', '_spiffy_event_recur', '_spiffy_event_hide_events', 'color', '_spiffy_event_begin', '_spiffy_event_end', '_spiffy_event_time', '_spiffy_event_end_time', '_spiffy_event_location', '_spiffy_event_link_location', '_spiffy_event_link', '_spiffy_event_repeats', '_spiffy_event_show_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spiffy_event_recur_multiplier', '_spiffy_event_recur', '_spiffy_event_hide_events', 'color', '_spiffy_event_begin', '_spiffy_event_end', '_spiffy_event_time', '_spiffy_event_end_time', '_spiffy_event_location', '_spiffy_event_link_location', '_spiffy_event_link', '_spiffy_event_repeats', '_spiffy_event_show_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spiffy_event_recur_multiplier', '_spiffy_event_recur', '_spiffy_event_hide_events', 'color', '_spiffy_event_begin', '_spiffy_event_end', '_spiffy_event_time', '_spiffy_event_end_time', '_spiffy_event_location', '_spiffy_event_link_location', '_spiffy_event_link', '_spiffy_event_repeats', '_spiffy_event_show_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spiffy_event_recur_multiplier', '_spiffy_event_recur', '_spiffy_event_hide_events', 'color', '_spiffy_event_begin', '_spiffy_event_end', '_spiffy_event_time', '_spiffy_event_end_time', '_spiffy_event_location', '_spiffy_event_link_location', '_spiffy_event_link', '_spiffy_event_repeats', '_spiffy_event_show_title');

