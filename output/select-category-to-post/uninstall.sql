-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selectcategory_css', 'selectcategory_order', 'selectcategory_num', 'selectcategory_maxnum', 'selectcategory_minnum');

