-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpcw_time_interval_default', 'dpcw_time_interval', 'dpcw_counter_content', 'dpcw_show_on_single_product', 'dpcw_sync_time', 'dpcw_change_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dpcw_first_time_run', 'dpcw_original_regular_price', 'dpcw_original_sale_price', 'dpcw_scheduled_date', 'enable_dpcw', 'dpcw_change_type', 'dpcw_last_price', 'dpcw_raise_drop_price', 'dpcw_raise_drop_expired', '_sale_price', '_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('dpcw_first_time_run', 'dpcw_original_regular_price', 'dpcw_original_sale_price', 'dpcw_scheduled_date', 'enable_dpcw', 'dpcw_change_type', 'dpcw_last_price', 'dpcw_raise_drop_price', 'dpcw_raise_drop_expired', '_sale_price', '_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('dpcw_first_time_run', 'dpcw_original_regular_price', 'dpcw_original_sale_price', 'dpcw_scheduled_date', 'enable_dpcw', 'dpcw_change_type', 'dpcw_last_price', 'dpcw_raise_drop_price', 'dpcw_raise_drop_expired', '_sale_price', '_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dpcw_first_time_run', 'dpcw_original_regular_price', 'dpcw_original_sale_price', 'dpcw_scheduled_date', 'enable_dpcw', 'dpcw_change_type', 'dpcw_last_price', 'dpcw_raise_drop_price', 'dpcw_raise_drop_expired', '_sale_price', '_price', '_regular_price');

