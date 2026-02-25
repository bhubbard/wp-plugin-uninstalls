-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubicsofts_asa_api_base', 'cubicsofts_asa_api_key', 'cubicsofts_asa_secret_token', 'cubicsofts_asa_email', 'cubicsofts_asa_password');

