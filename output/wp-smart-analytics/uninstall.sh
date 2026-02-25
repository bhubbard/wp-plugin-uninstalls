#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SHA_SECRET_KEY'
wp option delete 'SHA_SECRET_IV'
wp option delete 'WPSA_API_KEY'
wp option delete 'IGNORE_FILES'
wp option delete 'TAG_FREQUENCY'
wp option delete 'SESSION_DURATION'
wp option delete 'COOKIE'
wp option delete 'IP_STRING'
wp option delete 'IGNORE_BOTS'
wp option delete 'ANONYMIZE_IP'
wp option delete 'STOP_LOGGING'
wp option delete 'VISITOR_COUNT'
wp option delete 'REFRESH_TODAYS_LOG_DURATION'
wp option delete 'MAX_CACHE_RECORDS'
wp option delete 'MAX_DATABASE_RECORDS'

