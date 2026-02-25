-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_del_attachment', 'sg_enable_order_approval', 'sg_enable_order_edit', 'sg_attach_enable_order_approval', 'sg_attach_label', 'sg_attach_upload_label', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sg_product_attach_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('sg_product_attach_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('sg_product_attach_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sg_product_attach_enable');

