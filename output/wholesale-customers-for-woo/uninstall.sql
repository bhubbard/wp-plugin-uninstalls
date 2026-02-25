-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcs_global_discount', 'wcs_min_cart_amount');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcs_wholesale_customer', 'wholesale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcs_wholesale_customer', 'wholesale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcs_wholesale_customer', 'wholesale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcs_wholesale_customer', 'wholesale_price');

