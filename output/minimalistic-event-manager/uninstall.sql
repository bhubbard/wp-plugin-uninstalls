-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mem_post_types', 'mem_edit_mode', 'widget_mem_events_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mem_start_date', '_mem_repeat_date', '_mem_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mem_start_date', '_mem_repeat_date', '_mem_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mem_start_date', '_mem_repeat_date', '_mem_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mem_start_date', '_mem_repeat_date', '_mem_end_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_date';

