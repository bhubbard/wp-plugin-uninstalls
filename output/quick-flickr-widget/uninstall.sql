-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_quickflickr', 'widget_quick-flickr-widget', 'sidebars_widgets');

