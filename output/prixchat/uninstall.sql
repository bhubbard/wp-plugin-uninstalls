-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prixchat_settings', 'prixchat_db_version', 'prixchat_users');

