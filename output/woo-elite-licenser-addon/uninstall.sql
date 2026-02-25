-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce-elite-licenser-addon_o_EL_WOOCommerceAddon', 'wel_addons_time', 'wel_addons', 'active_sitewide_plugins', 'health-check-allowed-plugins');
DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('el_mapped_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('el_mapped_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('el_mapped_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('el_mapped_product');

