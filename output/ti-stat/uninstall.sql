-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ti_stat', 'ti_stat_options', 'ti_yauth', 'ti_stat_widget', 'ti_stat_graph', 'ti_stat_cache', 'ti_reports');

