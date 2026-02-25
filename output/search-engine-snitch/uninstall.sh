#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'searchenginesnitch_email'
wp option delete 'searchenginesnitch_frequency'

# Delete Transients
wp transient delete 'searchenginesnitch_activation_notice'

# Clear Cron Jobs
wp cron event delete 'searchenginesnitch_visibility_check'

