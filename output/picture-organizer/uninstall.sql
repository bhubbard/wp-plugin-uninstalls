-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovm_po_db_version', 'po_premium_info', 'ovm_po_uninstall_delete', 'active_tab');

