#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkcentral_db_version'
wp option delete 'linkcentral_enable_data_expiry'
wp option delete 'linkcentral_enable_dashboard_widget'
wp option delete 'linkcentral_track_user_agent'
wp option delete 'linkcentral_geolocation_service'
wp option delete 'linkcentral_auto_prefix_category'
wp option delete 'linkcentral_track_unique_visitors'
wp option delete 'linkcentral_dashboard_widget_period'
wp option delete 'linkcentral_url_prefix'
wp option delete 'linkcentral_dismissed_thirstyaffiliates_notice'
wp option delete 'linkcentral_dismissed_prettylinks_notice'
wp option delete 'linkcentral_dismissed_mtsurlshortener_notice'
wp option delete 'linkcentral_enable_ga'
wp option delete 'linkcentral_case_sensitive_redirects'
wp option delete 'linkcentral_excluded_ips'
wp option delete 'linkcentral_excluded_roles'
wp option delete 'linkcentral_disable_reporting'
wp option delete 'linkcentral_data_expiry_days'
wp option delete 'linkcentral_global_nofollow'
wp option delete 'linkcentral_global_sponsored'
wp option delete 'linkcentral_global_redirection_type'
wp option delete 'linkcentral_exclude_bots'
wp option delete 'linkcentral_ga_measurement_id'
wp option delete 'linkcentral_ga_api_secret'
wp option delete 'linkcentral_delete_tracking_data_on_link_deletion'
wp option delete 'linkcentral_default_link_insertion_type'
wp option delete 'linkcentral_enable_qr_codes'
wp option delete 'linkcentral_qr_background_color'
wp option delete 'linkcentral_qr_background_transparent'
wp option delete 'linkcentral_qr_front_color'
wp option delete 'linkcentral_custom_other_attributes'
wp option delete 'linkcentral_global_parameter_forwarding'
wp option delete 'linkcentral_custom_css_classes'
wp option delete 'linkcentral_default_disable_prefix'
wp option delete 'ta_link_prefix'
wp option delete 'linkcentral_enable_auto_keyword_linking'
wp option delete 'linkcentral_enable_utm_templates'
wp option delete 'linkcentral_webhook_url'
wp option delete 'linkcentral_webhook_payload_fields'
wp option delete 'linkcentral_webhook_delivery_mode'
wp option delete 'linkcentral_webhook_method'
wp option delete 'linkcentral_keyword_replace_posts'
wp option delete 'linkcentral_keyword_replace_pages'
wp option delete 'linkcentral_keyword_replace_home'
wp option delete 'linkcentral_keyword_replace_blog'
wp option delete 'linkcentral_keyword_replace_archive'
wp option delete 'linkcentral_keyword_content_types'
wp option delete 'linkcentral_broken_links'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'linkcentral_enable_broken_links_checker'
wp option delete 'linkcentral_enable_webhooks'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'linkcentral_daily_cleanup'
wp cron event delete 'linkcentral_send_webhook_async'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_sponsored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_sponsored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_sponsored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_sponsored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_css_classes_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_css_classes_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_css_classes_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_css_classes_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_custom_css_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_custom_css_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_custom_css_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_custom_css_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_dynamic_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_dynamic_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_dynamic_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_dynamic_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_destination_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_click_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_click_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_click_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_click_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_import_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_import_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_import_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_import_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_original_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_original_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_original_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_original_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_destination_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_rel_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_rel_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_rel_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_rel_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_no_follow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_new_window'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_new_window'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_new_window'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_new_window'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_pass_query_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_parameter_forwarding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_parameter_forwarding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_parameter_forwarding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_parameter_forwarding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_redirection_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_redirection_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_redirection_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_redirection_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_disable_slug_prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_disable_slug_prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_disable_slug_prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_disable_slug_prefix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_other_attributes_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_other_attributes_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_other_attributes_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_other_attributes_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkcentral_custom_other_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkcentral_custom_other_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkcentral_custom_other_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkcentral_custom_other_attributes'"
