-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsos_klpg_custom_HTML', 'wpsos_klpg_keywords', 'wpsos_klpg_settings');

