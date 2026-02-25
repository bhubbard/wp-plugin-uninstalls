#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts_dipwd_notification_email'
wp option delete 'ts_dipwd_notification_notes'
wp option delete 'ts_dipwd_previous_ip'
wp option delete 'ts_dipwd_settings'

