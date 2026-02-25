-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_add_bulk_cart_packages_products', '_add_bulk_cart_packages_quantities', '_package_complete_url', '_add_bulk_cart_packages_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_add_bulk_cart_packages_products', '_add_bulk_cart_packages_quantities', '_package_complete_url', '_add_bulk_cart_packages_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_add_bulk_cart_packages_products', '_add_bulk_cart_packages_quantities', '_package_complete_url', '_add_bulk_cart_packages_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_add_bulk_cart_packages_products', '_add_bulk_cart_packages_quantities', '_package_complete_url', '_add_bulk_cart_packages_coupon');

