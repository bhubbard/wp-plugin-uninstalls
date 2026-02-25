-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_ajax_add_to_cart', 'spcwp_debug', 'spcwp_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spcwp_ajax_cart_dismiss', 'spcwp_migration_banner_dismiss', '_spcwp_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('spcwp_ajax_cart_dismiss', 'spcwp_migration_banner_dismiss', '_spcwp_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('spcwp_ajax_cart_dismiss', 'spcwp_migration_banner_dismiss', '_spcwp_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spcwp_ajax_cart_dismiss', 'spcwp_migration_banner_dismiss', '_spcwp_processed');

