-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mst_time_zone', 'mst_latitude', 'mst_longitude', 'mst_method', 'mst_total_days', 'mst_back_days', 'ccpo_db_version');

