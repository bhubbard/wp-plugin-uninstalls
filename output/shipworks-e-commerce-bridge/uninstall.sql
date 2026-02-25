-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_order_number_prefix', 'woocommerce_order_number_suffix', 'adv_timestamp', 'show_coupon_shipAdv', 'show_private_message_shipAdv', 'show_customer_message_shipAdv', 'show_variationId_shipAdv', 'show_SKU_shipAdv', 'download_virtualProd_shipAdv', 'woocommerce_api_shipAdv', 'admin_notes_restriction_shipAdv', 'aftership_option_name', 'adv_username', 'adv_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_customer_note', '_wcms_packages');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_customer_note', '_wcms_packages');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_customer_note', '_wcms_packages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_customer_note', '_wcms_packages');

