#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webdoktoru_security_settings'

# Delete Transients
wp transient delete 'webdoktoru_security_cache'

# Clear Cron Jobs
wp cron event delete 'webdoktoru_security_cleanup'

