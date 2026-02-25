#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synoveo_client_id'
wp option delete 'synoveo_schema_enabled'
wp option delete 'synoveo_schema_include_rating'
wp option delete 'synoveo_location_id'
wp option delete 'synoveo_oauth_selections'
wp option delete 'synoveo_consent_given'
wp option delete 'synoveo_client_secret'
wp option delete 'synoveo_service_connected'
wp option delete 'synoveo_user_email'
wp option delete 'synoveo_user_name'
wp option delete 'synoveo_business_id'
wp option delete 'synoveo_business_name'
wp option delete 'synoveo_location_name'
wp option delete 'synoveo_location_address'
wp option delete 'synoveo_location_verified'
wp option delete 'synoveo_delete_on_uninstall'
wp option delete 'aioseo_options'
wp option delete 'amelia_settings'
wp option delete 'bookly_pmt_currency'
wp option delete 'bpfwp-settings'
wp option delete 'rank-math-options-titles'
wp option delete 'rank_math_local_business_type'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_store_email'
wp option delete 'woocommerce_store_name'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_description'
wp option delete 'synoveo_primary_category'
wp option delete 'wpseo_social'
wp option delete 'wpseo_local'
wp option delete 'wpseo_local_business_type'
wp option delete 'synoveo_google_business_connected'
wp option delete 'synoveo_jwt_secret'
wp option delete 'synoveo_debug_logging'
wp option delete 'synoveo_selected_location_id'
wp option delete 'synoveo_field_sources'
wp option delete 'synoveo_service_connected_at'
wp option delete 'synoveo_google_location_id'
wp option delete 'synoveo_google_business_id'
wp option delete 'synoveo_google_connection_data'
wp option delete 'synoveo_google_business_name'
wp option delete 'synoveo_google_connected_at'
wp option delete 'synoveo_last_sync_timestamp'
wp option delete 'synoveo_preferred_booking_source'
wp option delete 'synoveo_business_hours'
wp option delete 'synoveo_preferred_info_source'
wp option delete 'synoveo_preferred_hours_source'
wp option delete 'synoveo_last_activation_time'
wp option delete 'synoveo_google_disconnected_at'
wp option delete 'synoveo_core_snapshot_write'

# Delete Transients
wp transient delete 'synoveo_admin_error'
wp transient delete 'synoveo_admin_success'
wp transient delete 'synoveo_user_data'
wp transient delete 'synoveo_business_data'
wp transient delete 'synoveo_capabilities_data'
wp transient delete 'synoveo_location_data'
wp transient delete 'synoveo_quota_data'
wp transient delete 'synoveo_pending_business_selection'
wp transient delete 'synoveo_jwt_token'
wp transient delete 'synoveo_last_admin_heartbeat'
wp transient delete 'synoveo_lightweight_plugins'
wp transient delete 'synoveo_detected_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_synoveo_oauth_locations_%' OR option_name LIKE '_site_transient_synoveo_oauth_locations_%'"

# Clear Cron Jobs
wp cron event delete 'synoveo_hourly_heartbeat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_publish_to_gbp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_publish_to_gbp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_publish_to_gbp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_publish_to_gbp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_gbp_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_gbp_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_gbp_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_gbp_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_offer_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_offer_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_offer_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_offer_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_offer_redeem_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_offer_redeem_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_offer_redeem_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_offer_redeem_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_offer_terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_offer_terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_offer_terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_offer_terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_event_duration_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_event_duration_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_event_duration_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_event_duration_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_event_all_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_event_all_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_event_all_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_event_all_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_event_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_event_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_event_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_event_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_synoveo_scheduled_auto_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_synoveo_scheduled_auto_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_synoveo_scheduled_auto_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_synoveo_scheduled_auto_post'"
