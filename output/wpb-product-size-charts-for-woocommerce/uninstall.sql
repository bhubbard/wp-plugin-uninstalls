-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpb_psc_installed', 'wpb_psc_lite_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpb_psc_size_table', '_wpb_psc_disable', '_wpb_psc_size_chart', '_wpb_psc_set_for_all_products', '_wpb_psc__btn_text', '_wpb_psc_products', '_wpb_psc__product_categories', '_wpb_psc__tab_priority', 'wpb_psc_pro_discount_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpb_psc_size_table', '_wpb_psc_disable', '_wpb_psc_size_chart', '_wpb_psc_set_for_all_products', '_wpb_psc__btn_text', '_wpb_psc_products', '_wpb_psc__product_categories', '_wpb_psc__tab_priority', 'wpb_psc_pro_discount_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpb_psc_size_table', '_wpb_psc_disable', '_wpb_psc_size_chart', '_wpb_psc_set_for_all_products', '_wpb_psc__btn_text', '_wpb_psc_products', '_wpb_psc__product_categories', '_wpb_psc__tab_priority', 'wpb_psc_pro_discount_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpb_psc_size_table', '_wpb_psc_disable', '_wpb_psc_size_chart', '_wpb_psc_set_for_all_products', '_wpb_psc__btn_text', '_wpb_psc_products', '_wpb_psc__product_categories', '_wpb_psc__tab_priority', 'wpb_psc_pro_discount_dismissed');

