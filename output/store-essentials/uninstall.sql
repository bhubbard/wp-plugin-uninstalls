-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcses_sort_toggle', 'wcses_min_max_quantity_options', 'active_sitewide_plugins');

