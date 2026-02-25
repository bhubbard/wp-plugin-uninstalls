-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jwcfe_wc_fields_block_billing', 'jwcfe_wc_fields_block_shipping', 'jwcfe_wc_fields_block_additional', 'jwcfe_account_label', 'jwcfe_account_sync_fields', 'jwcfe_wc_fields_account', 'jwcfe_wc_fields_billing', 'jwcfe_wc_fields_shipping', 'jwcfe_wc_fields_additional', 'jwcfe_email_label', 'jwcfe_order_label', 'jwcfe_activation_redirect', 'active_sitewide_plugins', 'pdf', 'jwcfe_selected_pdfinvoice_fields', 'jwcfe_selected_csv_fields');
DELETE FROM wp_options WHERE option_name LIKE 'jwcfe_wc_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'jwcfe_wc_fields_block_%';

