-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scb_button_status', 'scb_whatsapp_number', 'scb_whatsapp_chat_text', 'scb_button_text', 'scb_button_target', 'scb_button_position', 'scb_button_z_index', 'scb_desktop_link_type', 'scb_desktop_bottom_margin', 'scb_tablet_bottom_margin', 'scb_mobile_bottom_margin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scb_button_hide_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scb_button_hide_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scb_button_hide_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scb_button_hide_status');

