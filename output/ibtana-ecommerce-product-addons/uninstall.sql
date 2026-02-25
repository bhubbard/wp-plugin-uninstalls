-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iepa_mega_menu_tutorial_steps', 'iepa_tutorial_steps', 'recently_activated', 'icpa_settings', 'icpa_tax_settings', 'iepa_mm_woo_settings', 'iepamegabox_csettings', 'iepamega_settings', 'iepa_mm_font_family', 'iepa_mm_register_skin', 'iepamegabox_settings', 'iepa_mm_default_settings', '_ive_allow_file_generation', 'woocommerce_cart_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id', 'woocommerce_pay_page_id', 'woocommerce_shop_page_id', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icpa-tax-img-id', '_iepamegamenu', '_menu_item_object_id', 'iepa_builder');
DELETE FROM wp_usermeta WHERE meta_key IN ('icpa-tax-img-id', '_iepamegamenu', '_menu_item_object_id', 'iepa_builder');
DELETE FROM wp_termmeta WHERE meta_key IN ('icpa-tax-img-id', '_iepamegamenu', '_menu_item_object_id', 'iepa_builder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icpa-tax-img-id', '_iepamegamenu', '_menu_item_object_id', 'iepa_builder');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'iepa_tgmpa_dismissed_notice_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'iepa_style_timestamp-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'iepa_style_timestamp-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'iepa_style_timestamp-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'iepa_style_timestamp-%';

