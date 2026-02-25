#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp_voice_2_app_setting_id_email'
wp option delete 'mp_voice_2_app_setting_id_password'
wp option delete 'mp_server_email_host'
wp option delete 'mp_server_email_username'
wp option delete 'mp_server_email_password'
wp option delete 'mp_server_email_port'
wp option delete 'mpvoice2app'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voice2app_narration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voice2app_narration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voice2app_narration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voice2app_narration'"
