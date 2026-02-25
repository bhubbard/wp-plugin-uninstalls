#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'settings_slack_notification_recurrence_mail'
wp option delete 'settings_slack_notification_disable_email'
wp option delete 'settings_slack_notification_channel'
wp option delete 'settings_slack_notification_bot_name'
wp option delete 'settings_slack_notification_recurrence'
wp option delete 'settings_slack_notification_attachment_id'
wp option delete 'settings_slack_notification_token'
wp option delete 'settings_slack_notification_message_title'
wp option delete 'settings_slack_notification_message_footer'
wp option delete 'settings_slack_notification_green_disable'
wp option delete 'notification_message_title'
wp option delete 'notification_message_footer'
wp option delete 'settings_slack_notification_status'
wp option delete 'wpdsa_version'

