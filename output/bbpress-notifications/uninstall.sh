#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbpress_notifications_new_topic_recipients'
wp option delete 'bbpress_notifications_new_topic_email_subject'
wp option delete 'bbpress_notifications_new_topic_email_body'
wp option delete 'bbpress_notifications_new_reply_recipients'
wp option delete 'bbpress_notifications_new_reply_email_subject'
wp option delete 'bbpress_notifications_new_reply_email_body'

