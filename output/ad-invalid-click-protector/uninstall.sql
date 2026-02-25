-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicp_settings_options', 'aicp_donate_notice', 'aicp_db_ver');

