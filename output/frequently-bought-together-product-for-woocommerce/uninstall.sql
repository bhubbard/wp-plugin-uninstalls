-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'add_to_cart_text');
DELETE FROM wp_options WHERE option_name LIKE '%sslpfwerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('occp_select2', 'occp_off_per', 'occp_discount_type', 'occp_block_width', 'attr_cus');
DELETE FROM wp_usermeta WHERE meta_key IN ('occp_select2', 'occp_off_per', 'occp_discount_type', 'occp_block_width', 'attr_cus');
DELETE FROM wp_termmeta WHERE meta_key IN ('occp_select2', 'occp_off_per', 'occp_discount_type', 'occp_block_width', 'attr_cus');
DELETE FROM wp_commentmeta WHERE meta_key IN ('occp_select2', 'occp_off_per', 'occp_discount_type', 'occp_block_width', 'attr_cus');

