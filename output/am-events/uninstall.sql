-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('am_timepicker_minutestep', 'am_rewrite_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('am_startdate', 'am_enddate', 'am_recurrence_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('am_startdate', 'am_enddate', 'am_recurrence_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('am_startdate', 'am_enddate', 'am_recurrence_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('am_startdate', 'am_enddate', 'am_recurrence_id');

