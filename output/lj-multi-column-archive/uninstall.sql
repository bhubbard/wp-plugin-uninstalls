-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LJMultiColumnArchive', 'widget-LJMultiColumnArchive-title', 'widget-LJMultiColumnArchive-showpostcount', 'widget-LJMultiColumnArchive-numcolumns');

