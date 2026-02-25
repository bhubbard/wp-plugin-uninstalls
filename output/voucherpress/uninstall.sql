-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voucherpress_data', 'voucherpress_version');
DELETE FROM wp_options WHERE option_name LIKE '% header';

