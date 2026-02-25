-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jqlb_comments', 'jqlb_automate', 'jqlb_resize_on_demand', 'jqlb_show_download', 'jqlb_navbarOnTop', 'jqlb_resize_speed', 'jqlb_margin_size', 'jqlb_help_text', 'jqlb_loopImages', 'jqlb_resizeCenter', 'jqlb_link_target');

