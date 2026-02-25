-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitformpro_integrate_key_data', 'bitform_secret_api_key', 'bit_wc_zoho_crm_installed', 'bit_wc_zoho_crm_version');

