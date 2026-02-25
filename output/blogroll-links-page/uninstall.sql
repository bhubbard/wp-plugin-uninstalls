-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogroll_page_new_window', 'blogroll_page_link', 'blogroll_page_display_cat', 'blogroll_page_link_order1', 'blogroll_page_link_order2');

