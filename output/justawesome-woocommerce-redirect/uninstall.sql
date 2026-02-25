-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('justawesome_woocommerce_redirect_type', 'justawesome_woocommerce_redirect_url', 'justawesome_woocommerce_redirect_pageid', 'justawesome_woocommerce_redirect_productid', 'woocommerce_shop_page_id');

