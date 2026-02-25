-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'wc_call_for_price__text', 'wc_call_for_price__show_image', 'wc_call_for_price__image', 'wc_call_for_price__show_uploaded_image');
DELETE FROM wp_options WHERE option_name LIKE '%text';
DELETE FROM wp_options WHERE option_name LIKE '%show_image';
DELETE FROM wp_options WHERE option_name LIKE '%image';
DELETE FROM wp_options WHERE option_name LIKE '%show_uploaded_image';
DELETE FROM wp_options WHERE option_name LIKE '%upload_image';

