-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssbm_delivery_method', 'ssbm_api_sending_key', 'ssbm_smtp_host', 'ssbm_smtp_port', 'ssbm_authentication', 'ssbm_smtp_username', 'ssbm_smtp_password', 'ssbm_encryption', 'ssbm_from_email', 'ssbm_force_from', 'ssbm_from_name', 'ssbm_error_message');

