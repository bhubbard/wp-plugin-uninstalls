-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_display_filter', 'widget_display_filter_notice', 'widget_display_filter_tab');

