#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ive_googleReCaptchaAPISiteKey'
wp option delete 'ive_googleReCaptchaAPISecretKey'
wp option delete 'ive_googleReCaptchaAPIToggle'
wp option delete '_ive_allow_file_generation'
wp option delete 'ive_general_settings'
wp option delete 'ive_active_vw_theme_text_domain'
wp option delete 'ibtana_ecommerce_product_addons_license_key'
wp option delete 'vw_pro_theme_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp option delete 'ive_default_settings'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_pay_page_id'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'ive-vw-theme-admin-notice-dismiss'
wp option delete 'ive_admin_notices'
wp option delete 'ive_google_recaptcha_api_site_key'
wp option delete 'ive_google_recaptcha_api_secret_key'
wp option delete 'ibtana_visual_editor_editor_width'
wp option delete 'config_blocks'
wp option delete 'settings_blocks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_attribute_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_attribute_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_attribute_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_attribute_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iepa_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ive_style_timestamp-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ive_style_timestamp-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ive_style_timestamp-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ive_style_timestamp-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_repeater_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_repeater_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_repeater_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_repeater_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_meta_select_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_meta_select_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_meta_select_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_meta_select_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
