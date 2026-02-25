-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_logic_visual');
DELETE FROM wp_options WHERE option_name LIKE '%-conditional-tags';
DELETE FROM wp_options WHERE option_name LIKE '%-conditional-tags-activate';
DELETE FROM wp_options WHERE option_name LIKE '%-visibility';
DELETE FROM wp_options WHERE option_name LIKE '%-only_show_in';

