-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpkginst_ssh_host', 'wpkginst_ssh_username', 'wpkginst_ssh_port', 'wpkginst_ssh_auth_type', 'wpkginst_ssh_private_key', 'wpkginst_ssh_last_error', 'wpkginst_ssh_password');
DELETE FROM wp_options WHERE option_name LIKE 'wpkginst_progress_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpkginst_output_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpkginst_installed_%';

