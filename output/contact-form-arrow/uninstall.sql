-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cfa_name', '_cfa_email', '_cfa_subject', '_cfa_phone', '_cfa_message', '_cfa_container_bg0', '_cfa_container_bg1', '_cfa_form_div_style', '_cfa_input_field_style', '_cfa_heading_style', '_cfa_submit_style', '_cfa_message_style', '_cfa_border_radius_style', '_cfa_send_mail', '_cfa_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cfa_name', '_cfa_email', '_cfa_subject', '_cfa_phone', '_cfa_message', '_cfa_container_bg0', '_cfa_container_bg1', '_cfa_form_div_style', '_cfa_input_field_style', '_cfa_heading_style', '_cfa_submit_style', '_cfa_message_style', '_cfa_border_radius_style', '_cfa_send_mail', '_cfa_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cfa_name', '_cfa_email', '_cfa_subject', '_cfa_phone', '_cfa_message', '_cfa_container_bg0', '_cfa_container_bg1', '_cfa_form_div_style', '_cfa_input_field_style', '_cfa_heading_style', '_cfa_submit_style', '_cfa_message_style', '_cfa_border_radius_style', '_cfa_send_mail', '_cfa_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cfa_name', '_cfa_email', '_cfa_subject', '_cfa_phone', '_cfa_message', '_cfa_container_bg0', '_cfa_container_bg1', '_cfa_form_div_style', '_cfa_input_field_style', '_cfa_heading_style', '_cfa_submit_style', '_cfa_message_style', '_cfa_border_radius_style', '_cfa_send_mail', '_cfa_value');

