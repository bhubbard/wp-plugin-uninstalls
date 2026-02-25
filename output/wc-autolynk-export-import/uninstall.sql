-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woei_customer_tracking_note', 'woei_tracking_url');
DELETE FROM wp_options WHERE option_name LIKE 'waei-import-file-%';

