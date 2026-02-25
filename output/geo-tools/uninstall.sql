-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geotools_TBMilles', 'geotools_tb_answer_type', 'geotools-color-picker-background-trackable', 'geotools_statbaranswer_type', 'geotools_statbar_geocacheur', 'geotools_statbar_Citation', 'geotools_statbar_guid', 'geotools_statbar_image', 'geotools-statbar-title', 'geotoolsTBNumber', 'geotools-trackable-title', 'geotools-color-picker-background-trackable-r', 'geotools-color-picker-background-trackable-g', 'geotools-color-picker-background-trackable-b');

