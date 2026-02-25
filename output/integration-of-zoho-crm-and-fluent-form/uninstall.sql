-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitffzc_erase_all', 'bitffzc_db_version', 'bitffzc_installed', 'bitffzc_version', 'bitffzc_routes');

