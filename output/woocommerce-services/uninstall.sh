#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcshipping_migration_state'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_connect_taxes_enabled'
wp option delete 'wcshipping_options'
wp option delete 'woocommerce_ppec_paypal_settings'
wp option delete 'woocommerce_erasure_request_removes_order_data'
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'stats_options'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'jetpack_offline_mode'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'woocommerce_setup_jetpack_opted_in'
wp option delete 'woocommerce_email_text_color'

# Delete Transients
wp transient delete 'connect_server_is_alive_transient'
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_is_single_user'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcc_notice_dismissed_%' OR option_name LIKE '_site_transient_wcc_notice_dismissed_%'"

# Clear Cron Jobs
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'
wp cron event delete 'wc_connect_fetch_service_schemas'
wp cron event delete 'wc_connect_fetch_sift_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_last_box_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_last_box_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_last_box_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_last_box_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_last_service_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_last_service_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_last_service_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_last_service_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_last_carrier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_last_carrier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_last_carrier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_last_carrier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcs_migration_survey_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcs_migration_survey_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcs_migration_survey_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcs_migration_survey_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcs_migration_survey_last_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcs_migration_survey_last_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcs_migration_survey_last_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcs_migration_survey_last_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcs_migration_survey_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcs_migration_survey_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcs_migration_survey_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcs_migration_survey_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_nux_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_nux_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_nux_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_nux_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_customs_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_customs_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_customs_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_customs_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack_json_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_wpcom_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_tracks_anon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack_force_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack_force_logout'"
