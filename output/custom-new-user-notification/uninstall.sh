#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cnun_user_mail_content'
wp option delete 'cnun_admin_mail_content'
wp option delete 'cnun_user_mail_subject'
wp option delete 'cnun_admin_mail_subject'
wp option delete 'cnun_user_mail_sender_mail'
wp option delete 'cnun_admin_mail_sender_mail'
wp option delete 'cnun_user_mail_sender_name'
wp option delete 'cnun_admin_mail_sender_name'

