-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpt-teacher-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpt_assignment_dueDate', 'wpt_assignment_docs', 'wpt_event_date', 'wpt_event');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpt_assignment_dueDate', 'wpt_assignment_docs', 'wpt_event_date', 'wpt_event');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpt_assignment_dueDate', 'wpt_assignment_docs', 'wpt_event_date', 'wpt_event');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpt_assignment_dueDate', 'wpt_assignment_docs', 'wpt_event_date', 'wpt_event');

