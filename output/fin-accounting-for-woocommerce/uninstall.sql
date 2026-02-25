-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('finpose_accounts', 'fin-expense-categories', 'finpose_removed_accounts', 'finpose_settings', 'finpose_errors', 'fin-cost-categories', 'fin-acquisition-categories', 'fin-spending-types', 'active_sitewide_plugins', 'finpose_version', 'finpose_db_version', 'fs_debug_mode', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-categories';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wf_invoice_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('wf_invoice_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('wf_invoice_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wf_invoice_number');

