-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adminmobile', 'provider', 'username', 'password', 'sender', 'visitormsg', 'msg');

