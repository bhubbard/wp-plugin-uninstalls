#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gozer_settings'
wp option delete 'gozer_bypass_tokens'

# Delete Transients
wp transient delete 'gozer_activation_notice'

# Clear Cron Jobs
wp cron event delete 'gozer_cleanup_tokens'

