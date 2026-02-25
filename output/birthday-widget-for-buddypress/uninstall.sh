#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_birthdays_settings'
wp option delete 'bb_birthdays_default_field'
wp option delete 'bp_birthdays_emails_installed'
wp option delete 'bp_birthdays_last_check_date'

# Clear Cron Jobs
wp cron event delete 'bb_cleanup_old_wishes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bb_birthday_wished_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bb_birthday_wished_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bb_birthday_wished_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bb_birthday_wished_users'"
