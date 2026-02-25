-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flance_amp_product_cat', 'showname', 'showimage', 'attribute', 'showdesc', 'showsku', 'splitchild', 'showmfk', 'category', 'showpkg', 'showprice', 'showquantity', 'showaddtocart', 'redirect', 'reload', 'redirectlink', 'showlink', 'instock', 'flance_amp_user_check', 'flance_amp_user_role', 'flance_amp_do_activation_redirect', ' splitchild', 'woocommerce_currency');

