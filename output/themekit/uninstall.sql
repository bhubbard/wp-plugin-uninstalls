-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wh_widget_classes');
DELETE FROM wp_options WHERE option_name LIKE '%-archives';

