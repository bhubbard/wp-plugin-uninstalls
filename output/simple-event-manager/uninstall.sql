-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simevema_event_image_height', 'simevema_event_date_format', 'simevema_filter_bg', 'simevema_filter_shadow', 'simevema_filter_radius', 'simevema_button_bg', 'simevema_button_hover', 'simevema_button_radius', 'simevema_event_bg', 'simevema_event_shadow', 'simevema_event_radius', 'simevema_event_title', 'simevema_event_text', 'simevema_event_meta_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_simevema_event_date', '_simevema_event_time', '_simevema_event_location', '_simevema_event_repeat', '_simevema_event_repeat_frequency', '_simevema_event_repeated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_simevema_event_date', '_simevema_event_time', '_simevema_event_location', '_simevema_event_repeat', '_simevema_event_repeat_frequency', '_simevema_event_repeated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_simevema_event_date', '_simevema_event_time', '_simevema_event_location', '_simevema_event_repeat', '_simevema_event_repeat_frequency', '_simevema_event_repeated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_simevema_event_date', '_simevema_event_time', '_simevema_event_location', '_simevema_event_repeat', '_simevema_event_repeat_frequency', '_simevema_event_repeated');

