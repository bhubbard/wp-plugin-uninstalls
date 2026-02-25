-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ni_order_status_email_content', '_ni_order_status_email_enable', '_ni_order_status_subject_line', '_ni_order_status_slug', '_ni_order_status_color', '_ni_order_status_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ni_order_status_email_content', '_ni_order_status_email_enable', '_ni_order_status_subject_line', '_ni_order_status_slug', '_ni_order_status_color', '_ni_order_status_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ni_order_status_email_content', '_ni_order_status_email_enable', '_ni_order_status_subject_line', '_ni_order_status_slug', '_ni_order_status_color', '_ni_order_status_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ni_order_status_email_content', '_ni_order_status_email_enable', '_ni_order_status_subject_line', '_ni_order_status_slug', '_ni_order_status_color', '_ni_order_status_description');

