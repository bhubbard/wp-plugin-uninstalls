-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ehdi_api_key', 'ehdi_selected_company_id', 'ehdi_dni_script', 'ehdi_wrap_script', 'ehdi_admin_notice');

