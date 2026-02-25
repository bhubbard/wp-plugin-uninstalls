#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autochmod_safe_again_at'

# Clear Cron Jobs
wp cron event delete 'rimuovi_permessi_scrittura'

