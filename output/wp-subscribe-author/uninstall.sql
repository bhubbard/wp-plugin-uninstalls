-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsa_subscribe_author_db_version', 'wpsa_mail_settings', 'wpsa_general_settings');

