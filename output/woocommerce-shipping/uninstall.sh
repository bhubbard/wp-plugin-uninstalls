#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_ppec_paypal_settings'
wp option delete 'woocommerce_erasure_request_removes_order_data'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_state'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'wcshipping_version'
wp option delete 'woocommerce_email_text_color'
wp option delete 'wcst_plugin_deactivated_message_shown'
wp option delete 'wcshipping_previous_woocommerce_version'
wp option delete 'woocommerce_version'
wp option delete 'wc_connect_options'
wp option delete 'wcshipping_installation_completed_shown'
wp option delete 'wcshipping_migration_completed_shown'
wp option delete 'wcst_data_migration_required'
wp option delete 'wcst_data_migration_processes_to_run'
wp option delete 'wcshipping_migration_state'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'stats_options'
wp option delete 'jetpack_activation_source'
wp option delete 'jetpack_affiliate_code'
wp option delete 'jetpack_partner_subsidiary_id'
wp option delete 'vaultpress'
wp option delete 'vaultpress_auto_register'
wp option delete 'jetpack_sso_remove_login_form'
wp option delete 'jetpack_sso_match_by_email'
wp option delete 'jetpack_sso_require_two_step'
wp option delete 'jetpack_protect_active'
wp option delete 'wpcom_public_coming_soon'

# Delete Transients
wp transient delete 'connect_server_is_alive_transient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcshipping_av_%' OR option_name LIKE '_site_transient_wcshipping_av_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcc_notice_dismissed_%' OR option_name LIKE '_site_transient_wcc_notice_dismissed_%'"
wp transient delete 'jetpack_assumed_site_creation_date'
wp transient delete 'jetpack_idc_possible_dynamic_site_url_detected'
wp transient delete 'jetpack_idc_local'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jetpack_idc_ip_requester_%' OR option_name LIKE '_site_transient_jetpack_idc_ip_requester_%'"
wp transient delete 'jetpack_is_single_user'

# Clear Cron Jobs
wp cron event delete 'wcshipping_send_return_label_email_delayed'
wp cron event delete 'wcshipping_cleanup_temp_file'
wp cron event delete 'wcshipping_fetch_service_schemas'
wp cron event delete 'jetpack_heartbeat'
wp cron event delete 'jetpack_clean_nonces'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_last_box_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_last_box_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_last_box_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_last_box_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_last_service_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_last_service_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_last_service_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_last_service_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_last_carrier_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_last_carrier_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_last_carrier_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_last_carrier_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_last_order_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_last_order_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_last_order_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_last_order_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_last_shipping_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_last_shipping_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_last_shipping_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_last_shipping_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_nux_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_nux_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_nux_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_nux_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcshipping_customs_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcshipping_customs_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcshipping_customs_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcshipping_customs_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcshipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcshipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcshipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcshipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
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
