-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fcdp_sponsor_link', 'fcdp_form_url', 'fcdp_xml_options', 'fcdp_title', 'fcdp_target_date', 'fcdp_target_time', 'fcdp_target_timezone', 'fcdp_background_color', 'fcdp_header_color', 'fcdp_header_txt_color', 'fcdp_panel_color', 'fcdp_countdown_txt_color', 'fcdp_panel_txt_color', 'fcdp_image_url');

