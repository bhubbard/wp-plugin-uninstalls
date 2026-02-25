-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ventocalendar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_start_date', '_end_date', '_start_time', '_end_time', '_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_start_date', '_end_date', '_start_time', '_end_time', '_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_start_date', '_end_date', '_start_time', '_end_time', '_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_start_date', '_end_date', '_start_time', '_end_time', '_color');

