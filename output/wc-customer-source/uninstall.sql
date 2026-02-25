-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_customer_source_export', 'wc_customer_source_settings');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_customer_source_checkout_field', 'wc_customer_source_checkout_other_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_customer_source_checkout_field', 'wc_customer_source_checkout_other_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_customer_source_checkout_field', 'wc_customer_source_checkout_other_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_customer_source_checkout_field', 'wc_customer_source_checkout_other_field');

