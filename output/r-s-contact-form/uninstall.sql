-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('russell_smtp', 'russell_design', 'russell_process', 'rscf', 'russell_message');

