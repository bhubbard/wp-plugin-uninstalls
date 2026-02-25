-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city');
DELETE FROM wp_options WHERE option_name LIKE '%pdf_margin_left';
DELETE FROM wp_options WHERE option_name LIKE '%pdf_margin_right';
DELETE FROM wp_options WHERE option_name LIKE '%pdf_order_details_title';
DELETE FROM wp_options WHERE option_name LIKE '%attach_to_mail_types';

