-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('db_key', 'db_secret', 'db_auth_token', 'db_auth_token_secret', 'db_path', 'db_temp_path', 'db_allow_ext');

