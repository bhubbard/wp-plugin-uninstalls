-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('external_db_type', 'external_host', 'external_db_port', 'external_db', 'external_db_user', 'external_db_pw', 'external_db_table', 'external_db_namefield', 'external_db_pwfield', 'external_db_first_name', 'external_db_last_name', 'external_db_user_url', 'external_db_user_email', 'external_db_description', 'external_db_aim', 'external_db_yim', 'external_db_jabber', 'external_db_enc', 'external_db_other_enc', 'external_db_error_msg', 'external_db_role_bool', 'external_db_role', 'external_db_role_value', 'external_db_site_url');

