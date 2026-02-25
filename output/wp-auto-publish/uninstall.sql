-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WIND_start_date', 'WIND_start_time', 'WIND_interval_time', 'WIND_draft_num', 'WIND_draf_orderby', 'WIND_recurrence', 'WIND_recurrence_times');

