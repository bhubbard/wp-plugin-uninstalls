#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lockspire_email_logs'
wp option delete 'lockspire_blocked_today'
wp option delete 'lockspire_blocked_ips'
wp option delete 'lockspire_activity_log'
wp option delete 'lockspire_activity_log_key'
wp option delete 'lockspire_notification_emails'
wp option delete 'lockspire_options'
wp option delete 'lockspire_last_scan'
wp option delete 'lockspire_firewall_rules'

