-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dc_pomfw_activate', 'dc_pomfw_message', 'dc_pomfw_position', 'dc_pomfw_login_text', 'dc_pomfw_login_link', 'dc_pomfw_register_text', 'dc_pomfw_register_link');

