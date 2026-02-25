#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfrom_mail_sender_email_id'
wp option delete 'wpfrom_custom_sender_id'
wp option delete 'wpfrom_mail_sender_name_id'
wp option delete 'wpfrom_admin_verify_email_id'
wp option delete 'wpfrom_pwd_admin_email_id'
wp option delete 'wpfrom_pwd_user_email_id'
wp option delete 'wpfrom_new_user_admin_email_id'
wp option delete 'wpfrom_autoupdate_core_email_id'
wp option delete 'wpfrom_autoupdate_plugin_email_id'
wp option delete 'wpfrom_autoupdate_theme_email_id'
wp option delete 'wpfrom_mail_sender_id'
wp option delete 'wpfrom_kill_email_id'

