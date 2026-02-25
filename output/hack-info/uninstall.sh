#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hack-info_option'
wp option delete 'hackinfo_db_version'
wp option delete 'hackinfo_digest_enable'
wp option delete 'hackinfo_digest_email'
wp option delete 'hackinfo_digest_timer'
wp option delete 'hackinfo_whois_enable'
wp option delete 'hackinfo_digest_sent'
wp option delete 'hackinfo_digest_size'

# Clear Cron Jobs
wp cron event delete 'hackinfo_send_digest'
wp cron event delete 'hackinfo_scan_log'

