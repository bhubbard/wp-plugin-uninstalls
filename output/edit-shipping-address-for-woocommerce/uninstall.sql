-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('editsafw_enable_address_edit', 'editsafw_max_address_changes', 'editsafw_allowed_order_statuses', 'editsafw_editable_shipping_fields', 'editsafw_shipping_email_template', 'editsafw_refund_email_template', 'woocommerce_stripe_settings', 'woocommerce-ppcp-settings', 'woocommerce-ppcp-data-common', 'woocommerce_razorpay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

