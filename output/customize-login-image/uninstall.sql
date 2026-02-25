-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apa_cli_logo_file', 'apa_cli_logo_url', 'apa_cli_login_background_color', 'apa_cli_show_server_ip', 'apa_cli_show_server_hostname');

