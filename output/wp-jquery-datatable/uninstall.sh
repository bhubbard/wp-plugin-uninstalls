#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_jdt_paging_type'
wp option delete 'wp_jdt_page_length'
wp option delete 'wp_jdt_order_row'
wp option delete 'wp_jdt_order_row_sort'
wp option delete 'wp_jdt_info'
wp option delete 'wp_jdt_paging'
wp option delete 'wp_jdt_b_length_change'
wp option delete 'wp_jdt_ordering'
wp option delete 'wp_jdt_searching'

