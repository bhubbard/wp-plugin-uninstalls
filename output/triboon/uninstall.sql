-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('triboon_logo', 'triboon_wp_token_option', 'notif_check', 'check_new_reportage', 'triboon_db_version', 'triboon_update_db_check', 'default-category');

