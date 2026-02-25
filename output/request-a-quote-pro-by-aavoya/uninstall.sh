#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awraq_getGoogleCaptchaKeys'
wp option delete 'awraq_blocked_ips'
wp option delete 'aavoya_wraq_global_settings'
wp option delete 'aavoya_wraq_random_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aavoya_wraq_fe_is_opened'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aavoya_wraq_fe_is_opened'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aavoya_wraq_fe_is_opened'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aavoya_wraq_fe_is_opened'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awraqFormAdminNotification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awraqFormAdminNotification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awraqFormAdminNotification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awraqFormAdminNotification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awraqFormUserNotification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awraqFormUserNotification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awraqFormUserNotification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awraqFormUserNotification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'googleCaptchaMeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'googleCaptchaMeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'googleCaptchaMeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'googleCaptchaMeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aavoya_wraq_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aavoya_wraq_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aavoya_wraq_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aavoya_wraq_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awraq_button_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awraq_button_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awraq_button_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awraq_button_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awraq_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awraq_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awraq_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awraq_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'awraq_term_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'awraq_term_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'awraq_term_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'awraq_term_meta'"
