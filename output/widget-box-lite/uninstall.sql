-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_box_lite_no_theme4press_theme_notice', 'widget_box_lite_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE 'widget_box_lite_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

