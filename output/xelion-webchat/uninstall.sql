-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xwc_initial_form_enquiry_required', 'xwc_api_host', 'xwc_api_tenant', 'xwc_api_gateway', 'xwc_api_token', 'xwc_api_is_valid');

