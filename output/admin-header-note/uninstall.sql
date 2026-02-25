-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adminHeaderNote_message', 'adminHeaderNote_link', 'adminHeaderNote_X', 'adminHeaderNote_Y', 'adminHeaderNote_color');

