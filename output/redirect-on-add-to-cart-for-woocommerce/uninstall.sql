-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart');
DELETE FROM wp_options WHERE option_name LIKE '%_installation_lite';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mwca_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mwca_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mwca_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mwca_settings');

