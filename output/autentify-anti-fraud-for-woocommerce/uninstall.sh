#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autentify_auto_order_check'
wp option delete 'autentify_api_token'

# Clear Cron Jobs
wp cron event delete 'wp_async_autentify_autenti_mail_check'

