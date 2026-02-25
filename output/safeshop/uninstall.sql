-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('safeshop_option_name', 'safeshop_status', 'safeshop_client_id', 'safeshop_client_secret');

