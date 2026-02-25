-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptms_scrollamount', 'ptms_scrolldelay', 'ptms_direction', 'ptms_style', 'ptms_noofpost', 'ptms_categories', 'ptms_orderbys', 'ptms_order', 'ptms_spliter', 'ptms_title');

