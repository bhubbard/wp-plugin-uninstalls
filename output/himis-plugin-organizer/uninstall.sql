-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('himiPlugin_options', 'himiPluginFilter_groups', 'himiPluginFilter_selected', 'himiPluginFilter_plugins', 'himiPluginComment_comments');

