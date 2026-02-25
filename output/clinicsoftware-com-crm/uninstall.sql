-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clinicsoftwarecom_form_fields', 'clinicsoftwarecom_mapping_fields', 'clinicsoftwarecom_client_key', 'clinicsoftwarecom_client_secret', 'clinicsoftwarecom_client_alias', 'clinicsoftwarecom_client_server');

