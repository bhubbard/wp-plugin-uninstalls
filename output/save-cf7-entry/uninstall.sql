-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scf7e_entry_deleted', 'scf7e_admin_success', 'scf7e_admin_failed');

