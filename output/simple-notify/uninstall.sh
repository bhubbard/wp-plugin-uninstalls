#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpno_enable_emails_new_user_register'
wp option delete 'simpno_email_template_new_user_register'
wp option delete 'simpno_enable_emails_new_post_publish'
wp option delete 'simpno_email_template_new_post_publish'
wp option delete 'notification_enable_emails_new_user_register'
wp option delete 'notification_email_template_new_user_register'
wp option delete 'notification_enable_emails_new_post_publish'
wp option delete 'notification_email_template_new_post_publish'

