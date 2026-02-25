#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stock_notification_threshold'
wp option delete 'stock_notification_email_templates'
wp option delete 'stock_availability_alert_installed'
wp option delete 'stock_availability_alert_version'

