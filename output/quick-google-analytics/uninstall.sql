-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickgoogleanalytics_ua', 'quickgoogleanalytics_g', 'quickgoogleanalytics_select', 'quickgoogleanalytics_ip');

