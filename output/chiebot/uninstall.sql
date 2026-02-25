-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chiebot_db_version', 'chiebot_settings', 'chiebot_documents', 'chiebot_license');
DELETE FROM wp_options WHERE option_name LIKE 'chiebot_admin_notice_%';

