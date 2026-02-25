-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flickrAPI_flickrid', 'flickrAPI_settings', 'flickrAPI_version', 'widget_flickrAPI');

