#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_etmfw_ticket_bg_color'
wp option delete 'wps_etmfw_ticket_text_color'
wp option delete 'wps_etmfw_email_body_content'
wp option delete 'wps_etmfwp_include_qr'
wp option delete 'wps_etmfw_background_image'
wp option delete 'wps_etmfw_logo_size'
wp option delete 'wps_etmfw_qr_size'
wp option delete 'wps_etmfw_pdf_background_color'
wp option delete 'wps_etmfw_pdf_text_color'
wp option delete 'wps_etmfw_border_type'
wp option delete 'wps_etmfw_pdf_border_color'
wp option delete 'wps_etmfw_mail_setting_upload_logo'
wp option delete 'wps_wet_hide_details_pdf_ticket'
wp option delete 'wps_etmfwp_include_barcode'
wp option delete 'wps_etmfw_pdf_header_background_color'
wp option delete 'wps_etmfw_ticket_template'
wp option delete 'wps_etmfw_ticket_body_text_color'
wp option delete 'wps_etmfw_radio_switch_demo'
wp option delete 'wps_etmfw_enable_plugin'
wp option delete 'wps_etmfw_enabe_location_site'
wp option delete 'wps_wet_enable_after_payment_done_ticket'
wp option delete 'wps_etmfw_google_maps_api_key'
wp option delete 'wps_etmfw_email_subject'
wp option delete 'wps_etmfw_enable_tracking'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_etmfwp_send_remainder_before_event'
wp option delete 'wps_etmfw_reminder_email_subject'
wp option delete 'wps_etmfw_reminder_email_body'
wp option delete 'wps_etmfw_copy_to_clipboard'
wp option delete 'wps_query_error'
wp option delete 'wps_wet_enable_ticket_sharing'
wp option delete 'wps_etmfw_event_dashboard'
wp option delete 'wps_etmfw_event_dashboard_color'
wp option delete 'wps_etmfw_external_css'
wp option delete 'm1'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'wps_etmfw_prod_logo_plugin'
wp option delete 'active_sitewide_plugins'
wp option delete 'wps_etmfw_google_client_id'
wp option delete 'wps_etmfw_google_client_secret'
wp option delete 'wps_etmfw_google_redirect_url'
wp option delete 'wpswings_tracker_last_send'
wp option delete 'wps_all_plugins_active'
wp option delete 'event_checkin_page_created'
wp option delete 'wp_date_time_event_format'
wp option delete 'is_wps_etmfw_migration_done'
wp option delete 'wps_etmfw_onboarding_data_skipped'
wp option delete 'wps_etmfw_onboarding_data_sent'
wp option delete 'wps_etmfw_resend_plugin'
wp option delete 'wps_etmfw_social_share_facebook'
wp option delete 'wps_etmfw_social_share_twitter'
wp option delete 'wps_etmfw_social_share_gmail'
wp option delete 'wps_etmfw_social_share_whatsapp'
wp option delete 'wps_etmfw_social_share_pinterest'
wp option delete 'wps_etmfwp_checkin_count'
wp option delete 'wps_etmfw_pdf_barcode_color'
wp option delete 'wps_total_increased_value'
wp option delete 'wps_user_type_value'
wp option delete 'wps_user_type_text'

# Clear Cron Jobs
wp cron event delete 'wps_wgm_check_for_notification_update'
wp cron event delete 'wps_event_tickets_manager_for_woocommerce_reminder_send'
wp cron event delete 'wpswings_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_etmfw_product_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_etmfw_product_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_etmfw_product_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_etmfw_product_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'is_recurring_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'is_recurring_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'is_recurring_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'is_recurring_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_has_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_has_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_has_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_has_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parent_of_recurring'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parent_of_recurring'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parent_of_recurring'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parent_of_recurring'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_etmfw_generated_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_etmfw_generated_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_etmfw_generated_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_etmfw_generated_tickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_etmfw_order_meta_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_etmfw_order_meta_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_etmfw_order_meta_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_etmfw_order_meta_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_etmfw_subscribe_for_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_etmfw_subscribe_for_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_etmfw_subscribe_for_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_etmfw_subscribe_for_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_etmfw_waiting_list_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_etmfw_waiting_list_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_etmfw_waiting_list_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_etmfw_waiting_list_count'"
