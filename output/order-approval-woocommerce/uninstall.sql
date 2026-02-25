-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_oa_woo_manage_inventory', 'woocommerce_woa_gateway_settings', 'sg_enable_order_edit', 'woocommerce_email_footer_text');

