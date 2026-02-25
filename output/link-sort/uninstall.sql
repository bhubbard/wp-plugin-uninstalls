-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cocolinksort_links_order', 'als_sort_id', 'als_order_type');

