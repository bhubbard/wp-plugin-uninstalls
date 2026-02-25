-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dtime_convert', 'ee_widget', 'ddatefunc_string', 'dtime_widget', 'dtime_widgetsec', 'ddatefunc_change', 'dtimefunc_change');

