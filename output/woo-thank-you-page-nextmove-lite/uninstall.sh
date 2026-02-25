#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%'"
wp option delete 'xl_is_opted'
wp option delete 'xlwcty_default_posts'
wp option delete 'xlwcty_custom_thank_you_pages'
wp option delete 'xlp_is_opted'
wp option delete '_site_transient_update_plugins'
wp option delete 'xlwcty_scroll_components'
wp option delete 'xlplugin_nextmove_lite_hide_update_notice'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'xlwcty_global_settings'
wp option delete 'fkwcs_wp_stripe'
wp option delete 'active_sitewide_plugins'
wp option delete 'xl_admin_notices'
wp option delete 'xl_uninstall_reasons'
wp option delete 'xl_optin_ref'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'xl_track_day'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_data'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'xl_get_modules'

# Clear Cron Jobs
wp cron event delete 'xlwcty_installed'
wp cron event delete 'xl_new_maybe_track_usage_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_builder_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_builder_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_builder_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_builder_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_builder_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_builder_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_builder_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_builder_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xlwcty_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xlwcty_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xlwcty_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xlwcty_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_is_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_is_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_is_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_is_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_order_details_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_order_details_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_order_details_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_order_details_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_customer_information_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_customer_information_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_customer_information_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_customer_information_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_order_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_order_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_order_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_order_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_chosen_order_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_chosen_order_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_chosen_order_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_chosen_order_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xlwcty_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xlwcty_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xlwcty_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xlwcty_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dt_sidebar_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdlr-core-page-option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdlr-core-page-option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdlr-core-page-option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdlr-core-page-option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
