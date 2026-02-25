#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'max_elements_secondary_color_option'
wp option delete 'max_elements_primary_color_option'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete '_astra_ext_enabled_extensions'
wp option delete 'woocommerce_enable_shipping_calc'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'elementor_cpt_support'
wp option delete 'max_elements_builder_frontend_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_elements_checkout_fields_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_elements_checkout_fields_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_elements_checkout_fields_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_elements_checkout_fields_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_elements_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_elements_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_elements_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_elements_theme_builder_target_include_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_elements_theme_builder_target_exclude_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_elements_theme_builder_target_exclude_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_elements_theme_builder_target_exclude_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_elements_theme_builder_target_exclude_locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_elements_theme_builder_target_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_elements_theme_builder_target_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_elements_theme_builder_target_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_elements_theme_builder_target_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_elements_theme_builder_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_elements_theme_builder_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_elements_theme_builder_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_elements_theme_builder_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_elements_theme_builder_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_elements_theme_builder_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_elements_theme_builder_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_elements_theme_builder_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-exclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footer-sml-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footer-sml-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footer-sml-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footer-sml-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footer-adv-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footer-adv-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footer-adv-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footer-adv-display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ast-main-header-display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ast-main-header-display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ast-main-header-display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ast-main-header-display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-disable-headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-disable-headline'"
