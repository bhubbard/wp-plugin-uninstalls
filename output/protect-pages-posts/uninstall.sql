-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pur_private_links', 'updated_htaccess_success', 'jal_db_version', 'FREE_NOTIFICATION_SETTINGS');

