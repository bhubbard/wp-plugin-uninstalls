-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('events_maker_general', 'events_maker_permalinks', 'events_maker_templates', 'events_maker_activated_blogs', 'events_maker_capabilities', 'events_maker_version', 'icl_sitepress_settings', 'em_activation_redirect', 'em_calendar_query');
DELETE FROM wp_options WHERE option_name LIKE 'event_category_%';
DELETE FROM wp_options WHERE option_name LIKE 'event_location_%';
DELETE FROM wp_options WHERE option_name LIKE 'event_organizer_%';
DELETE FROM wp_options WHERE option_name LIKE 'em_calendar_query-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_event_start_date', '_event_end_date', '_event_recurrence', '_event_tickets', '_event_featured', '_event_display_options', '_event_gallery', '_event_all_day', '_event_occurrence_date', '_event_free', '_event_tickets_url', '_event_occurrence_last_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_event_start_date', '_event_end_date', '_event_recurrence', '_event_tickets', '_event_featured', '_event_display_options', '_event_gallery', '_event_all_day', '_event_occurrence_date', '_event_free', '_event_tickets_url', '_event_occurrence_last_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_event_start_date', '_event_end_date', '_event_recurrence', '_event_tickets', '_event_featured', '_event_display_options', '_event_gallery', '_event_all_day', '_event_occurrence_date', '_event_free', '_event_tickets_url', '_event_occurrence_last_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_event_start_date', '_event_end_date', '_event_recurrence', '_event_tickets', '_event_featured', '_event_display_options', '_event_gallery', '_event_all_day', '_event_occurrence_date', '_event_free', '_event_tickets_url', '_event_occurrence_last_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_event_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_event_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_event_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_event_%';

