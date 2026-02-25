-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcsdt_handling_time', 'wcsdt_transit_time', 'wcsdt_show_handling_times', 'wcsdt_show_transit_times');

