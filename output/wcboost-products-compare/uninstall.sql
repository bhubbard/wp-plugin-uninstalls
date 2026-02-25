-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcboost_products_compare_added_behavior', 'wcboost_products_compare_tracking', 'wcboost_products_compare_bar', 'wcboost_products_compare_exists_item_button_behaviour', 'wcboost_products_compare_ajax_bypass_cache', 'wcboost_products_compare_bar_button_behavior', 'wcboost_products_compare_bar_hide_if_single', 'woocommerce_private_link', 'woocommerce_share_key', 'wcboost_products_compare_button_icon', 'wcboost_products_compare_button_text', 'wcboost_products_compare_version', 'wcboost_products_compare_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcboost_products_compare_load_after_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcboost_products_compare_load_after_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcboost_products_compare_load_after_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcboost_products_compare_load_after_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wcboost_products_compare_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wcboost_products_compare_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wcboost_products_compare_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wcboost_products_compare_%';

