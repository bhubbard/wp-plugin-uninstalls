-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bj_lazy_load_options');
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%prev_version';
DELETE FROM wp_options WHERE option_name LIKE '%currencyconverterapi_key';
DELETE FROM wp_options WHERE option_name LIKE '%page_files_intro';
DELETE FROM wp_options WHERE option_name LIKE '%page_payperview_intro';
DELETE FROM wp_options WHERE option_name LIKE '%ppvLevel';
DELETE FROM wp_options WHERE option_name LIKE '%page_membership_intro';
DELETE FROM wp_options WHERE option_name LIKE '%ppmLevel';
DELETE FROM wp_options WHERE option_name LIKE '%page_products_intro';
DELETE FROM wp_options WHERE option_name LIKE '%private_key';
DELETE FROM wp_options WHERE option_name LIKE '%public_key';
DELETE FROM wp_options WHERE option_name LIKE '%ppmProfile';
DELETE FROM wp_options WHERE option_name LIKE '%ppmExpiry';

