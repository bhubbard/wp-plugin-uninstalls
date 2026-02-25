-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gaxon_wpcbcp_linked', 'gaxon_wpcbcp_chatbox_method', 'gaxon_wpcbcp_chatbull_dir', 'gaxon_wpcbcp_widget_code', 'gaxon_wpcbcp_enabled_chatbox', 'gaxon_wpcbcp_pick_wpuser', 'gaxon_wpcbcp_visiblity_tpe', 'gaxon_wpcbcp_cbwindow_pages');

