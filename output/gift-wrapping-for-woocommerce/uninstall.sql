-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tgpc_gift_wrapper_enabled', 'tgpc_gift_wrapper_location', 'tgpc_gift_wrapper_checkbox_label', 'tgpc_gift_wrapper_cost', 'tgpc_gift_wrapper_cost_tax_status', 'tgpc_gift_wrapper_tax_class');

