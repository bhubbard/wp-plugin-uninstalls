-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wchc_hide_products_from_cat', 'wchc_hide_product_cats');

