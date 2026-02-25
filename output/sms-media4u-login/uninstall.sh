#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sms_media4u_authentication_key'
wp option delete 'sms_media4u_username'
wp option delete 'sms_media4u_password'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_sms_media4u'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_sms_media4u'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_sms_media4u'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_sms_media4u'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tel'"
