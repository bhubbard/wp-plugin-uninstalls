-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ddf_thanks_page', '_ddf_error_page', '_ddf_paypal_sandbox', '_ddf_paypal_email', '_ddf_pro_api_username', '_ddf_pro_api_password', '_ddf_pro_api_singnature', '_ddf_paypal_standard', '_ddf_paypal_webisite_pro', '_ddf_paypal_payflow', '_ddf_payflow_partner', '_ddf_payflow_vendor', '_ddf_payflow_machantid', '_ddf_payflow_password', '_ddf_default_geteway', '_ddf_default_currency');

