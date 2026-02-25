-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('factpro_fowo_client_types', 'factpro_fowo_send_email_automatically', 'factpro_fowo_client_token', 'factpro_fowo_api_version', 'factpro_fowo_base_url', 'factpro_fowo_token', 'factpro_fowo_testmode', 'woocommerce_calc_taxes', 'factpro_fowo_bsiglafactura', 'factpro_fowo_bnsiglafactura', 'factpro_fowo_siglafactura', 'factpro_fowo_nsiglafactura', 'factpro_fowo_install_timestamp', 'factpro_fowo_version', 'factpro_fowo_installing');

