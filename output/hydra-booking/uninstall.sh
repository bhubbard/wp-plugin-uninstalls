#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tfhb_hydra_quick_setup'
wp option delete 'tfhb_update_status'
wp option delete '_tfhb_availability_settings'
wp option delete '_tfhb_general_settings'
wp option delete '_tfhb_frontend_dashboard_settings'
wp option delete 'tfhb_register_page_id'
wp option delete 'tfhb_login_page_id'
wp option delete 'tfhb_dashboard_page_id'
wp option delete '_tfhb_hosts_settings'
wp option delete '_tfhb_integration_settings'
wp option delete '_tfhb_notification_settings'
wp option delete '_tfhb_appearance_settings'
wp option delete 'tfhb_promo__schedule_start_from'
wp option delete 'tfhb_promo__schedule_option'
wp option delete 'tf_promo_notice_exists'
wp option delete 'tf_promo_widget_exists'
wp option delete 'tfhb_dashboard_widget_dismissed'
wp option delete 'tf_dismiss_admin_notice'
wp option delete 'tfhb_dismiss_post_notice'
wp option delete 'tfhb_hydra_email_subscribe'
wp option delete 'HydraBooking_lic_email'
wp option delete 'HydraBooking_lic_response_obj'
wp option delete '_site_transient_update_plugins'
wp option delete 'tfhb_hydra_activation_date'
wp option delete 'HydraBooking_lic_Key'
wp option delete '_site_transient_update_themes'
wp option delete '_fluent_booking_settings'
wp option delete '_fcal_google_calendar_client_details'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_up' OR option_name LIKE '_site_transient_%_up'"

# Clear Cron Jobs
wp cron event delete 'tfhb_promo__schedule'
wp cron event delete 'tfhb_after_booking_completed_schedule'
wp cron event delete 'tfhb_cart_auto_remover_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tfhb_host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tfhb_host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tfhb_host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tfhb_host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__tfhb_meeting_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__tfhb_meeting_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__tfhb_meeting_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__tfhb_meeting_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tfhb_host_integration_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tfhb_host_integration_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tfhb_host_integration_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tfhb_host_integration_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__tfhb_meeting_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__tfhb_meeting_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__tfhb_meeting_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__tfhb_meeting_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tfhb_booking_opt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tfhb_booking_opt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tfhb_booking_opt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tfhb_booking_opt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfhb_user_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfhb_user_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfhb_user_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfhb_user_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfhb_user_is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfhb_user_is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfhb_user_is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfhb_user_is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
