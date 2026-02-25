#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'birthdayusers_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
