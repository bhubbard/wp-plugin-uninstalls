#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wcmamtx_do_activation_redirect'
wp option delete 'wcmamtx_act_date_free'
wp option delete 'wcmamtx_endpoint_allowed_to_add'
wp option delete 'wcmamtx_groups_allowed_to_add'
wp option delete 'wcmamtx_plugin_options'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'wcmamtx_advanced_settings'
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'woocommerce_logout_endpoint'
wp option delete 'wcmamtx_frontend_items'
wp option delete 'frontend_menu_items_updated'
wp option delete 'wcmamtx_avatar_settings'
wp option delete 'wcmamtx_dismiss_renew_notice_permanately'
wp option delete 'wcmamtx_dismiss_dashboard_text_notice_permanately'
wp option delete 'wcmamtx_dismiss_dashboard_text_notice_permanately2'
wp option delete 'wcmamtx_order_actions'
wp option delete 'wcmamtx_order_settings'
wp option delete 'wcmamtx_allowed_endpoint_trial'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wcmamtx_disable_wizard'
wp option delete 'wcmamtx_flush_rewrite_cache_required'
wp option delete 'wcmamtx_module_settings'
wp option delete 'wcmamtx_pro_settings'
wp option delete 'wcmamtx_tabs_to_add_third_party'
wp option delete 'syscmafwpl_billing_settings'
wp option delete 'syscmafwpl_shipping_settings'
wp option delete 'syscmafwpl_additional_settings'
wp option delete 'xts-woodmart-options'
wp option delete 'wcmamtx_upload_avatar_tab_caps'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sysbasics_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sysbasics_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sysbasics_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sysbasics_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
