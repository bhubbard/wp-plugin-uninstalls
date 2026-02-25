-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flickrstream_main_opts', 'widget_flickrstream_widget');
DELETE FROM wp_options WHERE option_name LIKE 'flickrstream_short_%';

