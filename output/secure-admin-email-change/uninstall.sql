-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secuadem_admin_notice_message', 'adminhash', 'new_admin_email');

