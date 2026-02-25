-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livesmart_css', 'livesmart_front_message', 'livesmart_names', 'livesmart_avatar', 'livesmart_server_url');

