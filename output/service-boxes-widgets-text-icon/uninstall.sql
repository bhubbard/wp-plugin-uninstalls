-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('service_boxes_widget_text_icon', 'service_boxs_widget_text_icon');

