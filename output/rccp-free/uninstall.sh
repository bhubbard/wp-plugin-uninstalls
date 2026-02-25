#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'ringcentral_send_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RingCentral_2fa_user_2fa_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RingCentral_2fa_user_2fa_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RingCentral_2fa_user_2fa_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RingCentral_2fa_user_2fa_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RingCentral_2fa_user_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RingCentral_2fa_user_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RingCentral_2fa_user_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RingCentral_2fa_user_mobile'"
