#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'metrion_api_path_part_1'
wp option delete 'metrion_api_path_part_2'
wp option delete 'metrion_user_cookie_name'
wp option delete 'metrion_user_cookie_lifetime'
wp option delete 'metrion_webhook_destination'
wp option delete 'metrion_click_ids_cookie_name'
wp option delete 'metrion_session_cookie_name'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'metrion_installation_id'
wp option delete 'metrion_event_id_name'
wp option delete 'metrion_session_cookie_lifetime'
wp option delete 'metrion_debug_mode'
wp option delete 'metrion_vat_included'
wp option delete 'metrion_shipping_costs_included'
wp option delete 'metrion_allow_marketing'
wp option delete 'metrion_allow_pii'
wp option delete 'metrion_allow_uid'
wp option delete 'metrion_allow_sid'
wp option delete 'metrion_allow_cookie_placement_before_explicit_consent'
wp option delete 'metrion_cmp_selection'
wp option delete 'metrion_consent_cookie_name'
wp option delete 'metrion_consent_floodgate_name'
wp option delete 'metrion_onetrust_marketing_code'
wp option delete 'metrion_onetrust_analytics_code'
wp option delete 'metrion_google_ads_syncs'
wp option delete 'metrion_enforce_google_consent_mode'
wp option delete 'metrion_meta_ads_syncs'
wp option delete 'metrion_microsoft_ads_enable_tracking'
wp option delete 'metrion_microsoft_ads_enforce_consent_mode'
wp option delete 'metrion_microsoft_ads_enable_dynamic_remarketing'
wp option delete 'metrion_microsoft_ads_tag_id'
wp option delete 'metrion_google_analytics_enable_tracking'
wp option delete 'metrion_google_analytics_measurement_id'
wp option delete 'metrion_google_analytics_api_secret'
wp option delete 'metrion_tiktok_ads_syncs'
wp option delete 'metrion_purchase_only_tracking'
wp option delete 'metrion_elementor_excluded_forms'
wp option delete 'metrion_floodgate_name'
wp option delete 'metrion_meta_test_event_code'
wp option delete 'metrion_enable_elementor_form_tracking'
wp option delete 'metrion_use_api_endpoints_to_load_js'
wp option delete 'metrion_session_info_storage_name'
wp option delete 'metrion_allow_pre_consent_pings'
wp option delete 'metrion_enable_block_detection'
wp option delete 'metrion_enable_myyounit_integration'
wp option delete 'metrion_enable_woocommerce_tracking'
wp option delete 'metrion_data_collection'
wp option delete 'metrion_api_key'
wp option delete 'metrion_api_secret'
wp option delete 'metrion_credentials_valid'

# Clear Cron Jobs
wp cron event delete 'metrion_refresh_credentials'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_metrion_tracking_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_metrion_tracking_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_metrion_tracking_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_metrion_tracking_sent'"
