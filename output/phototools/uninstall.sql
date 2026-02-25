-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phototools_options', 'phototools_list', 'photoToolsWidget_options');

