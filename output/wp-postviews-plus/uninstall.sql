-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PV+_botagent', 'PV+_option', 'PV+_useragent', 'PV+_views', 'PV+_DBversion');
DELETE FROM wp_options WHERE option_name LIKE '%options';

