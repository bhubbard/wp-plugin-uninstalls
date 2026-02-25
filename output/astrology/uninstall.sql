-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('astrology_plugin_options', 'astrology_client_status', 'astrology_admin_notices');

