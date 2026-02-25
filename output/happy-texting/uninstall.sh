#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'happy_texting_settings_migrated'
wp option delete 'happy_texting_settings_option_name'
wp option delete 'happy_texting_settings_sms_option_name'
wp option delete 'orddd_location_field_label'
wp option delete 'happy_texting_version'

# Clear Cron Jobs
wp cron event delete 'happy_texting_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dob'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birth_date'"
