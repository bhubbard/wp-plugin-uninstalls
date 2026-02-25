#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'name_of_unit'
wp option delete 'bonus_for_referrer'
wp option delete 'bonus_for_new_user'
wp option delete 'email_service'
wp option delete 'login_service'
wp option delete 'password_service'
wp option delete 'name_sender'
wp option delete 'course_of_units'
wp option delete 'telegram_channel_url'
wp option delete 'facebook_channel_url'
wp option delete 'twitter_channel_url'
wp option delete 'twitter_channel_title'
wp option delete 'phone_user_meta_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Verified_phone_by_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Verified_phone_by_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Verified_phone_by_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Verified_phone_by_sms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'units'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'units'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'units'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'units'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_facebook_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_facebook_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_facebook_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_facebook_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_twitter_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_twitter_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_twitter_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_twitter_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_telegram_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_telegram_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_telegram_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_telegram_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_number_box_1529446202'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_number_box_1529446202'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_number_box_1529446202'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_number_box_1529446202'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_secret_key'"
