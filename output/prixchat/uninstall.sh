#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prixchat_settings'
wp option delete 'prixchat_db_version'

# Delete Transients
wp transient delete 'prixchat_users'

# Clear Cron Jobs
wp cron event delete 'prixchat_clear_cache'

