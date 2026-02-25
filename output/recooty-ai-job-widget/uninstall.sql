-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recooty_widget_id', 'recooty_widget_language', 'recooty_widget_jobsperpage');

