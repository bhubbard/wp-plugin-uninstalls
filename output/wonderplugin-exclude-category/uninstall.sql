-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderplugin_exclude_blog', 'wonderplugin_exclude_search', 'wonderplugin_mainquery_only');

