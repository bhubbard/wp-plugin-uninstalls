#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_transient__mailster_send_period_timeout'

# Delete Transients
wp transient delete 'mailster_check_bounces_lock'
wp transient delete '_mailster_gmail_last_bounce_check'

