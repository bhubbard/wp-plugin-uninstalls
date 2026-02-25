-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_moip_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woocommerce_moip_method', 'woocommerce_moip_code', 'woocommerce_moip_status', 'woocommerce_moip_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('woocommerce_moip_method', 'woocommerce_moip_code', 'woocommerce_moip_status', 'woocommerce_moip_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('woocommerce_moip_method', 'woocommerce_moip_code', 'woocommerce_moip_status', 'woocommerce_moip_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woocommerce_moip_method', 'woocommerce_moip_code', 'woocommerce_moip_status', 'woocommerce_moip_url');

