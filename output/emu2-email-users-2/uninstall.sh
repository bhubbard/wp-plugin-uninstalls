#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EMU2_build'
wp option delete 'EMU2_mail_function'
wp option delete 'EMU2_debug'
wp option delete 'EMU2_schedule_time'
wp option delete 'EMU2_double_place'
wp option delete 'EMU2_default_schedule_subject'
wp option delete 'EMU2_default_schedule_body'
wp option delete 'EMU2_version'
wp option delete 'EMU2_default_subject'
wp option delete 'EMU2_default_body'
wp option delete 'EMU2_default_mail_format'
wp option delete 'EMU2_max_bcc_recipients'
wp option delete 'EMU2_sender_name'
wp option delete 'EMU2_sender_address'
wp option delete 'EMU2_check'

# Clear Cron Jobs
wp cron event delete 'EMU2_task_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EMU2_ACCEPT_NOTIFICATION_USER_META'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EMU2_ACCEPT_NOTIFICATION_USER_META'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EMU2_ACCEPT_NOTIFICATION_USER_META'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EMU2_ACCEPT_NOTIFICATION_USER_META'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EMU2_ACCEPT_MASS_EMAIL_USER_META'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EMU2_ACCEPT_MASS_EMAIL_USER_META'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EMU2_ACCEPT_MASS_EMAIL_USER_META'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EMU2_ACCEPT_MASS_EMAIL_USER_META'"
