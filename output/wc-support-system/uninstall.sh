#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wss-page'
wp option delete 'wss-page-layout'
wp option delete 'wss-admin-color-background'
wp option delete 'wss-admin-color-text'
wp option delete 'wss-user-color-background'
wp option delete 'wss-user-color-text'
wp option delete 'wss-support-email'
wp option delete 'wss-support-email-name'
wp option delete 'wss-support-email-footer'
wp option delete 'wss-user-notification'
wp option delete 'wss-admin-notification'
wp option delete 'wss-premium-key'

# Clear Cron Jobs
wp cron event delete 'wss_cron_tickets_action'

