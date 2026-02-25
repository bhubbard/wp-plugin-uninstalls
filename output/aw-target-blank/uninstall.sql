-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awtb_select_idclass', 'awtb_class_name', 'awtb_id_name', 'awtb_chooseclr', 'message_box');

