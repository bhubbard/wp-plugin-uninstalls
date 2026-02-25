-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsm_current_columns_to_show', 'tsm_quantity_per_batch', 'tsm_crawl_type', 'tsm_db_version', 'tsm_time_between_batches', 'tsm_autoreload_datatables');

