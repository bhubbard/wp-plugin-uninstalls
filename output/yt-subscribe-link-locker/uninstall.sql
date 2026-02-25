-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ytsll_dashboardTitle', 'ytsll_numberOfItems');

