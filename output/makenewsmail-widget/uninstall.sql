-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('makenewsmail_plugin_options', 'makenewsmail_lister', 'makenewsmail_status', 'widget_makenewsmail', 'username', 'apikey');

