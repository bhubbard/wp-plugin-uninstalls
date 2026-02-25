-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('local_pickup_options', 'do_not_use_shipping', 'base_country');

