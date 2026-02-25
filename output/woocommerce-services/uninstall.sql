-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcshipping_migration_state', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'wc_connect_taxes_enabled', 'wcshipping_options', 'woocommerce_ppec_paypal_settings', 'woocommerce_erasure_request_removes_order_data', 'woocommerce_shipping_debug_mode', 'woocommerce_tax_total_display', 'woocommerce_tax_based_on', 'stats_options', 'jetpack_activation_source', 'jetpack_affiliate_code', 'jetpack_partner_subsidiary_id', 'jetpack_offline_mode', 'vaultpress', 'vaultpress_auto_register', 'jetpack_sso_remove_login_form', 'jetpack_sso_match_by_email', 'jetpack_sso_require_two_step', 'jetpack_protect_active', 'wpcom_public_coming_soon', 'woocommerce_setup_jetpack_opted_in', 'woocommerce_email_text_color', 'connect_server_is_alive_transient', 'jetpack_assumed_site_creation_date', 'jetpack_idc_possible_dynamic_site_url_detected', 'jetpack_idc_local', 'jetpack_is_single_user');
DELETE FROM wp_options WHERE option_name LIKE 'jetpack_idc_ip_requester_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcc_notice_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_connect_last_box_id', 'wc_connect_last_service_id', 'wc_connect_last_carrier_id', 'wcs_migration_survey_count', 'wcs_migration_survey_last_shown', 'wcs_migration_survey_completed', 'wc_connect_nux_notices', 'dismissed_wp_pointers', 'wc_connect_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_connect_last_box_id', 'wc_connect_last_service_id', 'wc_connect_last_carrier_id', 'wcs_migration_survey_count', 'wcs_migration_survey_last_shown', 'wcs_migration_survey_completed', 'wc_connect_nux_notices', 'dismissed_wp_pointers', 'wc_connect_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_connect_last_box_id', 'wc_connect_last_service_id', 'wc_connect_last_carrier_id', 'wcs_migration_survey_count', 'wcs_migration_survey_last_shown', 'wcs_migration_survey_completed', 'wc_connect_nux_notices', 'dismissed_wp_pointers', 'wc_connect_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_connect_last_box_id', 'wc_connect_last_service_id', 'wc_connect_last_carrier_id', 'wcs_migration_survey_count', 'wcs_migration_survey_last_shown', 'wcs_migration_survey_completed', 'wc_connect_nux_notices', 'dismissed_wp_pointers', 'wc_connect_customs_info', 'jetpack_tracks_wpcom_id', 'jetpack_tracks_anon_id', 'wpcom_user_id', 'wpcom_user_data', 'jetpack_force_logout');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%';

