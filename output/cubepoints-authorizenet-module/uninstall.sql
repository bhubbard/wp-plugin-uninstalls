-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cp_module_authtopupcp_account', 'cp_module_authtopupcp_transaction', 'cp_module_authtopupcp_sandbox', 'cp_module_authtopupcp_currency', 'cp_module_authtopupcp_item', 'cp_module_authtopupcp_cancel', 'cp_module_authtopupcp_thankyou', 'cp_module_authtopupcp_price', 'cp_module_authtopupcp_min', 'cp_module_authtopupcp_form');

