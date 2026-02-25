-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_msmom_basic_options');
DELETE FROM wp_options WHERE option_name LIKE 'transient_ajax_%';

