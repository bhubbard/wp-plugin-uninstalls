#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abs_enable_zoom'
wp option delete 'abs_custom_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'abs_calendar_general%'"
wp option delete 'abs_admin_host_email'
wp option delete 'abs_email_reminder_time'
wp option delete 'abs_user_profile'
wp option delete 'abs_user_register_page'
wp option delete 'abs_user_login'
wp option delete 'abs_user_appointment'
wp option delete 'abs_setting'
wp option delete 'abs_enable_email_appointment_reminder'
wp option delete 'abs_appointment_reminder_contain'
wp option delete 'abs_enable_appointment_confirmation'
wp option delete 'abs_appointment_confirmation_contain'
wp option delete 'abs_enable_appointment_approval'
wp option delete 'abs_appointment_approval_contain'
wp option delete 'abs_enable_admin_email'
wp option delete 'abs_appointment_made_content'
wp option delete 'abs_zoom_account_id'
wp option delete 'abs_zoom_client_id'
wp option delete 'abs_zoom_client_secret'
wp option delete 'duration_zoom'
wp option delete 'zoom_password'
wp option delete 'abs_installed'
wp option delete 'abs_version'
wp option delete 'abs_duration_zoom'
wp option delete 'abs_zoom_password'
wp option delete 'abs_zoom_secret_key'
wp option delete 'abs_zoom_api_key'

# Clear Cron Jobs
wp cron event delete 'abs_email_manage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slot_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slot_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slot_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slot_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slot_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slot_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slot_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slot_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slot_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slot_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slot_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slot_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoom_join_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoom_join_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoom_join_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoom_join_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zoom_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zoom_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zoom_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zoom_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cmf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cmf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cmf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cmf_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appointment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appointment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appointment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appointment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'calendar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'calendar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'calendar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'calendar_id'"
