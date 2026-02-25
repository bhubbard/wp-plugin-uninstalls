-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_ppec_paypal_settings', 'woocommerce_erasure_request_removes_order_data', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_default_state', 'woocommerce_store_postcode', 'woocommerce_default_country', 'wcshipping_version', 'woocommerce_email_text_color', 'wcst_plugin_deactivated_message_shown', 'wcshipping_previous_woocommerce_version', 'woocommerce_version', 'wc_connect_options', 'wcshipping_installation_completed_shown', 'wcshipping_migration_completed_shown', 'wcst_data_migration_required', 'wcst_data_migration_processes_to_run', 'wcshipping_migration_state', 'woocommerce_email_footer_text', 'stats_options', 'jetpack_activation_source', 'jetpack_affiliate_code', 'jetpack_partner_subsidiary_id', 'vaultpress', 'vaultpress_auto_register', 'jetpack_sso_remove_login_form', 'jetpack_sso_match_by_email', 'jetpack_sso_require_two_step', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'connect_server_is_alive_transient', 'jetpack_assumed_site_creation_date', 'jetpack_idc_possible_dynamic_site_url_detected', 'jetpack_idc_local', 'jetpack_is_single_user');
DELETE FROM wp_options WHERE option_name LIKE 'wcshipping_av_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcc_notice_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_idc_ip_requester_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcshipping_last_box_id', 'wcshipping_last_service_id', 'wcshipping_last_carrier_id', 'wcshipping_last_order_completed', 'wcshipping_last_shipping_date', 'wcshipping_nux_notices', 'wcshipping_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcshipping_last_box_id', 'wcshipping_last_service_id', 'wcshipping_last_carrier_id', 'wcshipping_last_order_completed', 'wcshipping_last_shipping_date', 'wcshipping_nux_notices', 'wcshipping_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcshipping_last_box_id', 'wcshipping_last_service_id', 'wcshipping_last_carrier_id', 'wcshipping_last_order_completed', 'wcshipping_last_shipping_date', 'wcshipping_nux_notices', 'wcshipping_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcshipping_last_box_id', 'wcshipping_last_service_id', 'wcshipping_last_carrier_id', 'wcshipping_last_order_completed', 'wcshipping_last_shipping_date', 'wcshipping_nux_notices', 'wcshipping_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcshipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcshipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcshipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcshipping_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%';

