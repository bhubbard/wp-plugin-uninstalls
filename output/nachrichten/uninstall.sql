-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nachrichten_plugin_version', 'nachrichten_plugin_version_taken', 'nachrichten_plugin_widget_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('news_style_dashbord_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('news_style_dashbord_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('news_style_dashbord_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('news_style_dashbord_style');

