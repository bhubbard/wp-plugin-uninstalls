-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eoinvoice_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_ref_type';
DELETE FROM wp_options WHERE option_name LIKE '%_ref_prefix';
DELETE FROM wp_options WHERE option_name LIKE '%_ref_number_count';
DELETE FROM wp_options WHERE option_name LIKE '%_round_number_count';

