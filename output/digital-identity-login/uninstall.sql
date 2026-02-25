-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_digital_id_dock_configuration_details', 'mo_digital_id_ms_authenticator_callback_api_key', 'mo_digital_id_ms_authenticator_callback_api_key_iv', 'mo_digital_id_ms_authenticator_configuration_details', 'mo_digital_id_ms_authenticator_is_app_configured', 'mo_digital_id_supported_wallets', 'mo_digital_id_admin_email', 'mo_digital_id_encryption_key', 'mo_digital_identity_message', 'mo_digital_identity_support_message');
DELETE FROM wp_options WHERE option_name LIKE 'mo_digital_id_proof_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'mo_digital_id_proof_request_status_%';

