-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('board_rsvp_db_version', 'board_resources_content', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_committee_description', 'board_committees', 'current_employer', 'job_title', '_event_description', '_location', '_street', '_area', '_start_date_time', '_end_date_time', 'phone', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_committee_description', 'board_committees', 'current_employer', 'job_title', '_event_description', '_location', '_street', '_area', '_start_date_time', '_end_date_time', 'phone', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_committee_description', 'board_committees', 'current_employer', 'job_title', '_event_description', '_location', '_street', '_area', '_start_date_time', '_end_date_time', 'phone', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_committee_description', 'board_committees', 'current_employer', 'job_title', '_event_description', '_location', '_street', '_area', '_start_date_time', '_end_date_time', 'phone', 'description');

