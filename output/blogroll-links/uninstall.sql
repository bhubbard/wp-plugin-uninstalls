-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogroll_links_default_category_slug', 'blogroll_links_default_sort_by', 'blogroll_links_default_sort_order');

