#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cnut_user_mail_content'
wp option delete 'cnut_admin_mail_content'
wp option delete 'cnut_user_mail_subject'
wp option delete 'cnut_admin_mail_subject'
wp option delete 'cnut_user_mail_sender_mail'
wp option delete 'cnut_admin_mail_sender_mail'
wp option delete 'cnut_user_mail_sender_name'
wp option delete 'cnut_admin_mail_sender_name'

