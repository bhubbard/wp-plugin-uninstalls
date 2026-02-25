-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_epayco_settings', 'epayco_order_status', 'woocommerce_manage_stock');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('modo', 'My Field', 'refPayco', 'fecha', 'franquicia', 'autorizacion', 'billing_enumber');
DELETE FROM wp_usermeta WHERE meta_key IN ('modo', 'My Field', 'refPayco', 'fecha', 'franquicia', 'autorizacion', 'billing_enumber');
DELETE FROM wp_termmeta WHERE meta_key IN ('modo', 'My Field', 'refPayco', 'fecha', 'franquicia', 'autorizacion', 'billing_enumber');
DELETE FROM wp_commentmeta WHERE meta_key IN ('modo', 'My Field', 'refPayco', 'fecha', 'franquicia', 'autorizacion', 'billing_enumber');

