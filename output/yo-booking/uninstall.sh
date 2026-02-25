#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yo_booking_customer_pending_appointment_settings'
wp option delete 'yo_booking_company_name'
wp option delete 'yo_booking_company_address'
wp option delete 'yo_booking_company_phone'
wp option delete 'yo_booking_company_email'
wp option delete 'yo_booking_company_website'
wp option delete 'yo_booking_email_footer_text'
wp option delete 'yo_booking_company_logo'
wp option delete 'yo_booking_appearance_base_color'
wp option delete 'yo_booking_appearance_text_color'
wp option delete 'yo_booking_email_from_name'
wp option delete 'yo_booking_email_from_address'
wp option delete 'yo_booking_customer_confirmed_appointment_settings'
wp option delete 'yo_booking_customer_completed_appointment_settings'
wp option delete 'yo_booking_customer_missed_appointment_settings'
wp option delete 'yo_booking_customer_updated_appointment_settings'
wp option delete 'yo_booking_customer_reminder_settings'
wp option delete 'yo_booking_new_appointment_settings'
wp option delete 'yo_booking_cancelled_appointment_settings'
wp option delete 'yo_booking_missed_appointment_settings'
wp option delete 'yo_booking_appearance_highlight_color'
wp option delete 'yo_booking_business_hours'
wp option delete 'yo_booking_country_availability'
wp option delete 'yo_booking_specific_countries'
wp option delete 'yo_booking_time_slot_length'
wp option delete 'yo_booking_booking_lead_time'
wp option delete 'yo_booking_booking_period_available'
wp option delete 'yo_booking_default_status'
wp option delete 'yo_booking_minimum_cancellation_time'
wp option delete 'yo_booking_required_contact'
wp option delete 'yo_booking_service_category'
wp option delete 'yo_booking_staff_group'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'yo_booking_premium_license_status'
wp option delete 'yo_booking_version'

# Clear Cron Jobs
wp cron event delete 'yo_booking_customer_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yo_booking_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yo_booking_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yo_booking_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yo_booking_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yo_booking_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yo_booking_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yo_booking_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yo_booking_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
