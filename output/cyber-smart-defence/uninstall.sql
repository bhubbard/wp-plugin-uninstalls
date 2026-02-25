-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cybersmartdefence_do_activation_redirect', 'cybersmartdefence_table_created');
DELETE FROM wp_options WHERE option_name LIKE 'cybersmartdefence_block_%';

