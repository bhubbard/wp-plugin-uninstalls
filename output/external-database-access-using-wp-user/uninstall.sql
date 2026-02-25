-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ext_db_type', 'ext_db_mdb2_path', 'ext_host', 'ext_db_port', 'ext_db', 'ext_table', 'ext_access_type', 'ext_db_user', 'ext_db_pw', 'ext_db_other_enc', 'ext_db_site_url', 'ext_db_error_msg');

