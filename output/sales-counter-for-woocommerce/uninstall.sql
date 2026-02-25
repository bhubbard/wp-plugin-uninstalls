-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sales_counter_enable_check', 'sales_counter_enable_title', 'sales_counter_zero_disable_check', 'sales_counter_wc_select_option', 'sales_counter_single_enable_check', 'sales_counter_wc_select_single_option', 'sales_counter_zero_custom_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales');

