#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_user'
wp option delete 'sms_password'
wp option delete 'sms_signature'
wp option delete 'sms_header'
wp option delete 'sms_footer'
wp option delete 'sms_max'
wp option delete 'sms_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_send_sms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_send_sms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_send_sms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_send_sms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_profile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_profile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_profile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_profile_number'"
