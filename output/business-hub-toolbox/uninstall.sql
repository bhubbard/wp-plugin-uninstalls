-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwsec_add_setting', 'bht_instagram_feeds');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date_timepicker_start', 'date_timepicker_end', 'address', 'name', 'phone', 'email', 'start_hour', 'end_hour', 'speaker_id', 'desc_title', 'speaker_title', 'event_logo', 'rwspt_details', 'rwspt_meta_fields', 'event_repeatable');
DELETE FROM wp_usermeta WHERE meta_key IN ('date_timepicker_start', 'date_timepicker_end', 'address', 'name', 'phone', 'email', 'start_hour', 'end_hour', 'speaker_id', 'desc_title', 'speaker_title', 'event_logo', 'rwspt_details', 'rwspt_meta_fields', 'event_repeatable');
DELETE FROM wp_termmeta WHERE meta_key IN ('date_timepicker_start', 'date_timepicker_end', 'address', 'name', 'phone', 'email', 'start_hour', 'end_hour', 'speaker_id', 'desc_title', 'speaker_title', 'event_logo', 'rwspt_details', 'rwspt_meta_fields', 'event_repeatable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date_timepicker_start', 'date_timepicker_end', 'address', 'name', 'phone', 'email', 'start_hour', 'end_hour', 'speaker_id', 'desc_title', 'speaker_title', 'event_logo', 'rwspt_details', 'rwspt_meta_fields', 'event_repeatable');

