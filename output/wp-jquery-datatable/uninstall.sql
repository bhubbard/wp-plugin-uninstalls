-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_jdt_paging_type', 'wp_jdt_page_length', 'wp_jdt_order_row', 'wp_jdt_order_row_sort', 'wp_jdt_info', 'wp_jdt_paging', 'wp_jdt_b_length_change', 'wp_jdt_ordering', 'wp_jdt_searching');

