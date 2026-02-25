-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_stock_snapshot_action_scheduler', 'alg_wc_stock_snapshot_action_scheduler_interval', 'alg_wc_stock_snapshot_tools_take_snapshot', 'alg_wc_stock_snapshot_tools_delete_snapshots', 'alg_wc_stock_snapshot_clear_transients', 'alg_wc_stock_snapshot_url', 'alg_wc_stock_snapshot_product_update', 'alg_wc_stock_snapshot_include_variations', 'alg_wc_stock_snapshot_count_children', 'alg_wc_stock_snapshot_extra_data', 'alg_wc_stock_snapshot_version', 'alg_wc_stock_snapshot_history_date_points', 'alg_wc_stock_snapshot_history_product_cats', 'alg_wc_stock_snapshot_report_do_in_background', 'active_sitewide_plugins', 'alg_wc_stock_snapshot_report_data', 'alg_wc_stock_snapshot_restocked', 'alg_wc_stock_snapshot_history', 'alg_wc_stock_snapshot_report');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_wc_stock_snapshot');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_wc_stock_snapshot');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_wc_stock_snapshot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_wc_stock_snapshot');

