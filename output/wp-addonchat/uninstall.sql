-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('addonchat_room_id', 'addonchat_use_ras', 'addonchat_enable_guest', 'addonchat_default_height', 'addonchat_default_width', 'addonchat_display_newwindow', 'addonchat_server_id', 'addonchat_password');

