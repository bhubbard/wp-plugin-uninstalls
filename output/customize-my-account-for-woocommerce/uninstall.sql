-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmamtx_do_activation_redirect', 'wcmamtx_act_date_free', 'wcmamtx_endpoint_allowed_to_add', 'wcmamtx_groups_allowed_to_add', 'wcmamtx_plugin_options', 'woocommerce_registration_generate_username', 'woocommerce_registration_generate_password', 'wcmamtx_advanced_settings', 'woocommerce_myaccount_orders_endpoint', 'woocommerce_myaccount_downloads_endpoint', 'woocommerce_myaccount_edit_address_endpoint', 'woocommerce_myaccount_payment_methods_endpoint', 'woocommerce_myaccount_edit_account_endpoint', 'woocommerce_logout_endpoint', 'wcmamtx_frontend_items', 'frontend_menu_items_updated', 'wcmamtx_avatar_settings', 'wcmamtx_dismiss_renew_notice_permanately', 'wcmamtx_dismiss_dashboard_text_notice_permanately', 'wcmamtx_dismiss_dashboard_text_notice_permanately2', 'wcmamtx_order_actions', 'wcmamtx_order_settings', 'wcmamtx_allowed_endpoint_trial', 'woocommerce_myaccount_page_id', 'wcmamtx_disable_wizard', 'wcmamtx_flush_rewrite_cache_required', 'wcmamtx_module_settings', 'wcmamtx_pro_settings', 'wcmamtx_tabs_to_add_third_party', 'syscmafwpl_billing_settings', 'syscmafwpl_shipping_settings', 'syscmafwpl_additional_settings', 'xts-woodmart-options', 'wcmamtx_upload_avatar_tab_caps');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'sysbasics_user_avatar', 'wps_wpr_overall__accumulated_points');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'sysbasics_user_avatar', 'wps_wpr_overall__accumulated_points');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'sysbasics_user_avatar', 'wps_wpr_overall__accumulated_points');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'sysbasics_user_avatar', 'wps_wpr_overall__accumulated_points');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%company';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%company';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_1';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_2';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%city';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%city';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%state';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%state';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%postcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%country';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%country';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%country';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%country';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

