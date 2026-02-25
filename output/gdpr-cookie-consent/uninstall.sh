#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpl_pro_active'
wp option delete 'wpl_page_views'
wp option delete 'page_view_notice_message'
wp option delete 'wpl_monthly_page_views'
wp option delete 'wpl_total_page_views'
wp option delete 'wpl_pro_tawk_script_added'
wp option delete 'wpl_pro_hubspot_script_added'
wp option delete 'wpl_pro_recaptcha_script_added'
wp option delete 'wpl_pro_adsense_script_added'
wp option delete 'wpl_pro_matomo_script_added'
wp option delete 'wpl_ab_options'
wp option delete 'gdpr_template_migration_done'
wp option delete 'gdpr_default_template_object'
wp option delete 'gdpr_single_page_scan_url'
wp option delete 'wc_am_product_id_gdpr_cookie_consent'
wp option delete 'wc_am_client_gdpr_cookie_consent'
wp option delete 'gdpr_last_scan'
wp option delete 'gdpr_settings_enabled'
wp option delete '_transient_timeout_gdpr_ab_testing_transient'
wp option delete '_transient_gdpr_ab_testing_transient'
wp option delete '_transient_timeout_gdpr_display_message_other_plugin_on_change'
wp option delete '_transient_gdpr_display_message_other_plugin_on_change'
wp option delete 'gdpr_admin_modules'
wp option delete 'gdpr_public_modules'
wp option delete 'gdpr_version_number'
wp option delete '	analytics_activation_redirect_gdpr-cookie-consent'
wp option delete 'wpl_logs_admin'
wp option delete 'wpl_datarequests_db_version'
wp option delete 'wpl_cl_decline'
wp option delete 'wpl_cl_accept'
wp option delete 'wpl_cl_partially_accept'
wp option delete 'wpl_cl_bypass'
wp option delete 'wpl_geo_options'
wp option delete 'wpl_bypass_script_blocker'
wp option delete 'wpl_consent_timestamp'
wp option delete 'GDPR_COOKIE_CONSENT_SETTINGS_FIELD'
wp option delete 'gdpr_review_pending'
wp option delete 'wc_am_client_wpl_cookie_consent_activated'
wp option delete 'gdpr_no_of_page_scan'
wp option delete 'GDPRCookieConsent-2.0'
wp option delete 'GDPRCookieConsent-3.0'
wp option delete 'GDPRCookieConsent-4.0'
wp option delete 'GDPRCookieConsent-5.0'
wp option delete 'GDPRCookieConsent-6.0'
wp option delete 'GDPRCookieConsent-7.0'
wp option delete 'GDPRCookieConsent-8.0'
wp option delete 'wpl_pro_version_number'
wp option delete 'gdpr_usage_tracking_allowed'
wp option delete 'gdpr_first_time_installed'
wp option delete 'gdpr_preview_banner_state'
wp option delete 'gdpr_scan_schedule_data'
wp option delete 'wpl_total_ignore_count'
wp option delete 'wplegalpages_api_secret'
wp option delete 'wplp_cookie_banner_created_once'
wp option delete 'wpl_options_custom-scripts'
wp option delete 'wpeka_api_framework_app_settings'
wp option delete 'wplegal_api_framework_app_settings'
wp option delete 'app_wplp_subscription_status_pending_cancel'
wp option delete 'gdpr_scanning_action_hash'
wp option delete 'wc_am_client_gdpr_cookie_consent_instance'
wp option delete 'lp_accept_terms'
wp option delete 'gdpr_no_of_scans'
wp option delete 'analytics_activation_redirect_gdpr-cookie-consent'
wp option delete 'redirect_after_activation_option'
wp option delete 'GDPRCookieConsent-1.0'
wp option delete 'WPLCookieConsent-1.0'
wp option delete 'gdpr_connected'
wp option delete 'wpl_pro_maxmind_integrated'
wp option delete 'iabtcfConsent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'foo'

# Delete Transients
wp transient delete 'gdpr_ab_testing_transient'
wp transient delete 'gdpr_review_transient'
wp transient delete 'gdpr_monthly_scan_limit_exhausted'
wp transient delete 'wpl_gcm_check_is_scanning'
wp transient delete 'app_wplp_subscription_payment_status_failed'
wp transient delete 'gdpr_scan_in_progress_ttl'
wp transient delete 'gdpr_clear_cookies_action'
wp transient delete 'gdpr_display_message_other_plugin_on_change'
wp transient delete 'wpl_blocked_scripts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_lock' OR option_name LIKE '_site_transient_%_lock'"
wp transient delete 'random_600'
wp transient delete 'dirsize_cache'

# Clear Cron Jobs
wp cron event delete 'refresh_gacm_vendor_list_event'
wp cron event delete 'update_maxmind_db_event'
wp cron event delete 'gdpr_check_scan_results_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_userid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_userid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_userid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_userid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_siteurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_siteurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_siteurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_siteurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_consent_forward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_consent_forward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_consent_forward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_consent_forward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gdpr_policies_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gdpr_policies_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gdpr_policies_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gdpr_policies_domain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gdpr_policies_links_editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_ip_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_ip_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_ip_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_ip_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_country_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_country_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_country_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_country_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_details_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_details_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_details_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_details_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_userid_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_userid_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_userid_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_userid_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_siteurl_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_siteurl_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_siteurl_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_siteurl_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wplconsentlogs_consent_forward_cf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wplconsentlogs_consent_forward_cf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wplconsentlogs_consent_forward_cf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wplconsentlogs_consent_forward_cf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rebney'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rebney'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rebney'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rebney'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gameshow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gameshow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gameshow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gameshow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Frank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Frank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Frank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Frank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'architect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'architect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'architect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'architect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cap-linked_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cap-linked_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cap-linked_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cap-linked_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best_radiohead_album'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best_radiohead_album'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best_radiohead_album'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best_radiohead_album'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_xfn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tobias'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tobias'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tobias'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tobias'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nationality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nationality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nationality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nationality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'landmark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'landmark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'landmark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'landmark'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hidden_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hidden_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hidden_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hidden_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'critical_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'critical_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'critical_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'critical_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'the-field-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'the-field-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'the-field-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'the-field-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'with_underscores'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'with_underscores'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'with_underscores'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'with_underscores'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customfield'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customfield'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customfield'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customfield'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'foo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
