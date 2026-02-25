#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpc_onboarding_done'
wp option delete 'tpc_maybe_run_onboarding'
wp option delete 'tpc_obd_new_user'
wp option delete 'theme_switched'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp option delete 'templates_patterns_collection_fse_templates'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_edit_address_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_change_password_page_id'
wp option delete 'woocommerce_logout_page_id'
wp option delete 'themeisle_ob_plugins_installed'
wp option delete 'themeisle_blocks_settings_redirect'
wp option delete 'masteriyo_first_time_activation_flag'
wp option delete 'es_is_demo_executed'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-widget'"
wp option delete 'tiob_inherited_autoactivate'
wp option delete 'active_sitewide_plugins'
wp option delete 'neve_notice_dismissed'
wp option delete 'nv_pro_white_label_status'
wp option delete 'ti_white_label_inputs'
wp option delete 'templates_patterns_collection_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete '_wc_activation_redirect'
wp transient delete 'wpforms_activation_redirect'
wp transient delete 'ti_tpc_should_flush_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ti_tpc_template_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ti_tpc_template_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ti_tpc_template_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ti_tpc_template_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nv_mm_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nv_mm_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nv_mm_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nv_mm_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ti_tpc_template_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ti_tpc_template_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ti_tpc_template_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ti_tpc_template_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ti_tpc_site_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ti_tpc_site_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ti_tpc_site_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ti_tpc_site_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ti_tpc_screenshot_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ti_tpc_screenshot_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ti_tpc_screenshot_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ti_tpc_screenshot_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ti_tpc_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ti_tpc_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ti_tpc_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ti_tpc_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
