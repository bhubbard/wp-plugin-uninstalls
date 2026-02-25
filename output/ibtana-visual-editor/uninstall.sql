-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ive_googleReCaptchaAPISiteKey', 'ive_googleReCaptchaAPISecretKey', 'ive_googleReCaptchaAPIToggle', '_ive_allow_file_generation', 'ive_general_settings', 'ive_active_vw_theme_text_domain', 'ibtana_ecommerce_product_addons_license_key', 'vw_pro_theme_key', 'ive_default_settings', 'woocommerce_cart_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_checkout_page_id', 'woocommerce_pay_page_id', 'woocommerce_shop_page_id', 'ive-vw-theme-admin-notice-dismiss', 'ive_admin_notices', 'ive_google_recaptcha_api_site_key', 'ive_google_recaptcha_api_secret_key', 'ibtana_visual_editor_editor_width', 'config_blocks', 'settings_blocks', 'sidebars_widgets');
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', 'iepa_builder', '_wp_page_template', 'custom_repeater_item', 'custom_meta_select_field', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', 'iepa_builder', '_wp_page_template', 'custom_repeater_item', 'custom_meta_select_field', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', 'iepa_builder', '_wp_page_template', 'custom_repeater_item', 'custom_meta_select_field', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock', '_stock_status', '_regular_price', '_sale_price', '_price', 'iepa_builder', '_wp_page_template', 'custom_repeater_item', 'custom_meta_select_field', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_attribute_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ive_style_timestamp-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ive_style_timestamp-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ive_style_timestamp-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ive_style_timestamp-%';

