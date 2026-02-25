-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scon_order_number_prefix', 'scon_order_number_suffix', 'scon_sunarc_enabled');

