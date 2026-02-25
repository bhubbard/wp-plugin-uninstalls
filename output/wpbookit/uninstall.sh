#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpb_custom_code_data'
wp option delete 'google_meet_settings'
wp option delete 'wpbookit_general_setting_data'
wp option delete 'wpbookit_offline_payment_modes'
wp option delete 'wpb_settings'
wp option delete 'wpb_zoom_settings'
wp option delete 'wpb_payment_gateways'
wp option delete '_wpb_email_list'
wp option delete 'wpbookit_theme_setting_data'
wp option delete 'wpbookit_table_created_v1.0.0'
wp option delete '_wpb_add_user_role'
wp option delete '_wpb_migrate_payment_table'
wp option delete '_wpb_migrate_tax_table'
wp option delete '_wpb_migrate_guest_table_'
wp option delete '_wpb_migrate_guest_table_add_phone_col_'

# Delete Transients
wp transient delete 'iq-notice'

# Clear Cron Jobs
wp cron event delete 'wpb_customer_booking_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'staff_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'staff_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'staff_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'staff_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_group_booking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_group_booking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_group_booking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_group_booking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slots_per_booking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slots_per_booking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slots_per_booking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slots_per_booking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weekly_time_slots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weekly_time_slots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weekly_time_slots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weekly_time_slots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'specific_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'specific_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'specific_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'specific_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unavailable_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unavailable_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unavailable_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unavailable_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'questions_answers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'questions_answers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'questions_answers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'questions_answers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_user_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_user_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_user_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_user_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_type_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_type_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_type_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_type_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dialCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dialCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dialCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dialCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iso2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iso2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iso2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iso2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpb_zoom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpb_zoom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpb_zoom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpb_zoom_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'private_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'private_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'private_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'private_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'staff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'staff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'staff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'staff'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
