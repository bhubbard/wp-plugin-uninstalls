#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qa_setting_captcha'
wp option delete 'qa_setting_captcha_publickey'
wp option delete 'qa_setting_captcha_privatekey'
wp option delete 'qa_setting_email'
wp option delete 'qa_setting_default_email'
wp option delete 'qa_setting_user_response'
wp option delete 'qa_setting_number_qa'
wp option delete 'qa_setting_default_answer'
wp option delete 'qa_setting_background_open'
wp option delete 'qa_setting_background_close'

# Delete Transients
wp transient delete 'qa-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_ip'"
