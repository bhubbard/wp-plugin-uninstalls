-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttm_version', 'ttm_hide_subscribers', 'ttm_tawktoscript', 'ttm_advanced_mode', 'ttm_hide_logged_in_subscribers', 'ttm_backend_show_subscribers', 'ttm_backend_show_editors', 'ttm_backend_show_authors', 'ttm_backend_show_always', 'ttm_backend_hide_admin', 'ttm_backend_show_myaccount', 'ttm_hide_shopmanager', 'ttm_show_always', 'ttm_show_front_page', 'ttm_show_cat_pages', 'ttm_show_tag_pages', 'ttm_show_page', 'ttm_show_post', 'ttm_hide_admin', 'ttm_show_logged_in_subscribers', 'ttm_backend_hide_shopmanager', 'ttm_show_single_product', 'ttm_show_shop_page', 'ttm_show_cart_page', 'ttm_show_checkout_page');

