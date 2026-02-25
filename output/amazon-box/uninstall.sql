-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msg', 'ab_box_1', 'ab_box_2', 'ab_box_3', 'ab_box_4', 'ab_box_5', 'ab_box_6', 'AS', 'page', 'Pos', 'Page');

