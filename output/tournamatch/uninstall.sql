-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tournamatch_options', 'trn_online_users', 'update_plugins');

