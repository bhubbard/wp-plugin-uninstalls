-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glt-site-language', 'glt-multi-language', 'glt-languages', 'glt-languages-list', 'glt-display-mode', 'glt-inline-display-mode', 'glt-tabbed-display-mode', 'glt-flags', 'glt-flags-list', 'glt-flags-order', 'glt-toolbar', 'glt-align', 'glt-active', 'glt-analytics', 'glt-analytics-id', 'glt-css');
DELETE FROM wp_options WHERE option_name LIKE 'glt-%';

