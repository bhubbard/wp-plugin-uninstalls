-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hec_options', 'hec_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hec_hide', '_hec_notes', '_hec_title', '_hec_event', '_hec_calculation', '_hec_start', '_hec_stop', 'hec_extended');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hec_hide', '_hec_notes', '_hec_title', '_hec_event', '_hec_calculation', '_hec_start', '_hec_stop', 'hec_extended');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hec_hide', '_hec_notes', '_hec_title', '_hec_event', '_hec_calculation', '_hec_start', '_hec_stop', 'hec_extended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hec_hide', '_hec_notes', '_hec_title', '_hec_event', '_hec_calculation', '_hec_start', '_hec_stop', 'hec_extended');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hec_dashboard_days';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hec_dashboard_days';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hec_dashboard_days';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hec_dashboard_days';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hec';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hec';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hec';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hec';

