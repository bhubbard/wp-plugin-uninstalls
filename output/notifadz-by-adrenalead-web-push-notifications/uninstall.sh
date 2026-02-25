#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adrenalead_notifadz_profil'
wp option delete 'adrenalead_notifadz_token'
wp option delete 'adrenalead_notifadz_need_confirm_template'
wp option delete 'adrenalead_notifadz_confirm_template_id'
wp option delete 'adrenalead_notifadz_template_data'
wp option delete 'adrenalead_notifadz_tab'
wp option delete 'adrenalead_notifadz_ads'
wp option delete 'adrenalead_notifadz_send_push_on_publish'
wp option delete 'adrenalead_notifadz_device_targeted_on_publish'
wp option delete 'adrenalead_notifadz_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adrenalead_notifadz_%'"
wp option delete 'adrenalead_notifadz_script'
wp option delete 'adrenalead_notifadz_script_triggers_activated'
wp option delete 'adrenalead_notifadz_script_triggers'
wp option delete 'adrenalead_notifadz_worker'
wp option delete 'adrenalead_notifadz_account_id'
wp option delete 'adrenalead_notifadz_need_to_copy_ads'

# Clear Cron Jobs
wp cron event delete 'notifadz_adrenalead_hourly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifadz_adrenalead_send_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifadz_adrenalead_send_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifadz_adrenalead_send_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifadz_adrenalead_send_push'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifadz_adrenalead_push_device'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifadz_adrenalead_push_device'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifadz_adrenalead_push_device'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifadz_adrenalead_push_device'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifadz_adrenalead_sent_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifadz_adrenalead_sent_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifadz_adrenalead_sent_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifadz_adrenalead_sent_push'"
