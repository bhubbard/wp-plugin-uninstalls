-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPGAlerts_Max_Alerts', 'WPGAlerts_Strip_Tags', 'WPGAlerts_Content_Post', 'WPGAlerts_Content_Pre', 'WPGAlerts_Author_Post', 'WPGAlerts_Author_Pre', 'WPGAlerts_Title_Post', 'WPGAlerts_Title_Pre', 'WPGAlerts_db_version');

