-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsc_wp_conditions_settings', 'pagespeedonline_dates_arr', 'wpfixit_con_admin_load_times', 'wpfixit_con_load_times');

