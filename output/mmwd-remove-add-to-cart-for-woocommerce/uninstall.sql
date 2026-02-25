-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmwd_remove_atc_activated', 'mmwd_remove_atc', 'mmwd_remove_price');

