-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pronamic_event_status_upcoming', 'pronamic_event_status_passed', 'pronamic_event_repeat_slug_date_format', 'pronamic_event_base', 'pronamic_event_category_base', 'pronamic_event_status_base', 'pronamic_events_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pronamic_end_date', '_pronamic_event_all_day', '_pronamic_event_repeat', '_pronamic_event_repeat_frequency', '_pronamic_event_repeat_interval', '_pronamic_event_ends_on', '_pronamic_event_ends_on_count', '_pronamic_event_ends_on_until', '_pronamic_event_start_date', '_pronamic_event_end_date', '_pronamic_event_start_date_gmt', '_pronamic_event_end_date_gmt', '_pronamic_location', '_pronamic_event_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pronamic_end_date', '_pronamic_event_all_day', '_pronamic_event_repeat', '_pronamic_event_repeat_frequency', '_pronamic_event_repeat_interval', '_pronamic_event_ends_on', '_pronamic_event_ends_on_count', '_pronamic_event_ends_on_until', '_pronamic_event_start_date', '_pronamic_event_end_date', '_pronamic_event_start_date_gmt', '_pronamic_event_end_date_gmt', '_pronamic_location', '_pronamic_event_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pronamic_end_date', '_pronamic_event_all_day', '_pronamic_event_repeat', '_pronamic_event_repeat_frequency', '_pronamic_event_repeat_interval', '_pronamic_event_ends_on', '_pronamic_event_ends_on_count', '_pronamic_event_ends_on_until', '_pronamic_event_start_date', '_pronamic_event_end_date', '_pronamic_event_start_date_gmt', '_pronamic_event_end_date_gmt', '_pronamic_location', '_pronamic_event_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pronamic_end_date', '_pronamic_event_all_day', '_pronamic_event_repeat', '_pronamic_event_repeat_frequency', '_pronamic_event_repeat_interval', '_pronamic_event_ends_on', '_pronamic_event_ends_on_count', '_pronamic_event_ends_on_until', '_pronamic_event_start_date', '_pronamic_event_end_date', '_pronamic_event_start_date_gmt', '_pronamic_event_end_date_gmt', '_pronamic_location', '_pronamic_event_url');

