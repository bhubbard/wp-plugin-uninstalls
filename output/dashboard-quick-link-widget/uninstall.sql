-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dashboard_quick_link_widget_enable', 'dashboard_quick_link_widget_title', 'dashboard_quick_link_widget_header_notice', 'dashboard_quick_link_widget_link_list', 'dashboard_quick_link_widget_open_link', 'dashboard_quick_link_widget_footer_notice', 'dashboard_quick_link_widget_mbox_bcolor', 'dashboard_quick_link_widget_mbox_fcolor');

