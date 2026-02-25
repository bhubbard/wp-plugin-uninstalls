-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chartbeat_userid', 'chartbeat_enable_newsbeat', 'chartbeat_apikey', 'chartbeat_trackadmins', 'chartbeat_enable_headline_testing', 'chartbeat_widgetconfig');

