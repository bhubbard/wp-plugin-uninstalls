#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cufgo_enable'
wp option delete 'cufgo_send_user_notification_email'
wp option delete 'cufgo_settings'

