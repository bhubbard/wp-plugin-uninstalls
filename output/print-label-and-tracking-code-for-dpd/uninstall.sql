-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('activate_admin_dpd', 'wc_dpd_server', 'wc_dpd_print_username', 'wc_dpd_print_password', 'wc_dpd_print_sender_name', 'wc_dpd_print_sender_address', 'wc_dpd_print_sender_city', 'wc_dpd_print_sender_zipcode', 'wc_dpd_print_sender_country', 'wc_dpd_print_sender_contact', 'wc_dpd_print_sender_phone', 'wc_dpd_print_sender_email', 'woocommerce_weight_unit', 'wc_dpd_email_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Želim naručiti dostavnu službu', 'dpd_order_tracking_number', 'dpd_order_tracking_filename');
DELETE FROM wp_usermeta WHERE meta_key IN ('Želim naručiti dostavnu službu', 'dpd_order_tracking_number', 'dpd_order_tracking_filename');
DELETE FROM wp_termmeta WHERE meta_key IN ('Želim naručiti dostavnu službu', 'dpd_order_tracking_number', 'dpd_order_tracking_filename');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Želim naručiti dostavnu službu', 'dpd_order_tracking_number', 'dpd_order_tracking_filename');

