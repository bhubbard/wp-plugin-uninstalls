#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eventadmin_import_demo_data'
wp option delete 'eventadmin_import_demo_data_done'
wp option delete 'eventadmin_notification_email'
wp option delete 'eventadmin_notification_email_name'
wp option delete 'eventadmin_email_subject_assign'
wp option delete 'eventadmin_email_subject_unassign'
wp option delete 'eventadmin_email_text_assign'
wp option delete 'eventadmin_email_text_unassign'
wp option delete 'eventadmin_allow_overlap'
wp option delete 'eventadmin_unassign_limit_hours'
wp option delete 'eventadmin_limit_per_year'
wp option delete 'eventadmin_limit_per_month'
wp option delete 'eventadmin_limit_per_week'
wp option delete 'eventadmin_limit_per_day'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eventadmin_token_%' OR option_name LIKE '_site_transient_eventadmin_token_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_volunteers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_volunteers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_volunteers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_volunteers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shift_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shift_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shift_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shift_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shift_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shift_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shift_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shift_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eventadmin_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eventadmin_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eventadmin_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eventadmin_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'assigned_user_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'assigned_user_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'assigned_user_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'assigned_user_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'magic_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'magic_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'magic_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'magic_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'magic_login_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'magic_login_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'magic_login_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'magic_login_expire'"
